import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/core/network/interfaces/base_client_generator.dart';
part 'json_api_client.freezed.dart';
// part 'json_api_client_generated.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  static final UserData _userData = UserData();
  // Routes
  const PlaceHolderClient._() : super();
  const factory PlaceHolderClient.login(String email, String password) = _Login;
  // const factory PlaceHolderClient.register(
  //     String email, String username, String password, String phone) = _Register;
  const factory PlaceHolderClient.createProduct(String barcode, String name, String merchantId, int purchasePrice, int sellingPrice, int amount, String unitType, int categoryId) = _CreateProduct;

  @override
  String get baseURL => "http://34.219.97.21";

  @override
  Future<Map<String, dynamic>> get header async {
    return {
      "accept": "application/json",
      "authorization": "Bearer " + await _userData.getToken(),
    };
  }

  @override
  String get path {
    return this.when<String>(
      // register: (String email, String username, String password,
      //         String phone) =>
      //     '/user/registration?email=$email&fullName=$username&password=$password&phone=$phone',
      login: (String email, String password) =>
          '/user/login?email=$email&password=$password',
      createProduct: (
        String barcode, String name, String merchantId, 
        int purchasePrice, int sellingPrice, int amount, 
        String unitType, int categoryId) => '/v1/product/create',
    );
  }

  @override
  String get method {
    return this.maybeWhen<String>(
      orElse: () => 'GET',
      login: (String email, String password) => 'POST',
      // register:
      //     (String email, String username, String password, String phone) =>
      //         'POST',
      createProduct: (
        String barcode, String name, String merchantId, 
        int purchasePrice, int sellingPrice, int amount, 
        String unitType, int categoryId) => 'POST'
    );
  }

  @override
  dynamic get body {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
      login: (String email, String password) => null,
      // register:
      //     (String email, String username, String password, String phone) =>
      //         null,
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}
