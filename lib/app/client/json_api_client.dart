import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/core/network/interfaces/base_client_generator.dart';
import 'package:qolaily/main.dart';
part 'json_api_client.freezed.dart';
// part 'json_api_client_generated.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  static final UserData _userData = UserData();
  // static final merchantId = _userData.getMerchantId();

  // Routes
  const PlaceHolderClient._() : super();
  const factory PlaceHolderClient.login(String email, String password) = _Login;
  // const factory PlaceHolderClient.register(
  //     String email, String username, String password, String phone) = _Register;
  // product-api: каталог
  // const factory PlaceHolderClient.createProduct(String barcode, String name, String merchantId, int purchasePrice, int sellingPrice, int amount, String unitType, int categoryId) = _CreateProduct;
  // const factory PlaceHolderClient.createProduct() = _CreateProduct;
  const factory PlaceHolderClient.filterProduct() = _FilterProduct;

  // waybill: Прием товаров
  const factory PlaceHolderClient.filterWaybill() = _FilterWaybill;
  const factory PlaceHolderClient.createWaybill() = _CreateWaybill;
  const factory PlaceHolderClient.addProductToWaybill(
      Map<String, dynamic> data) = _AddProductToWaybill;
  const factory PlaceHolderClient.deleteWaybill(String merchantId, int id) =
      _DeleteWaybill;
  const factory PlaceHolderClient.getWaybillProducts(int id) =
      _GetWaybillProducts;
  // inventory: Ревизия
  const factory PlaceHolderClient.getRevisionProducts(int id) =
      _GetRevisionProducts;
  const factory PlaceHolderClient.deleteRevision(String merchantId, int id) =
      _DeleteRevision;

  @override
  String get baseURL => "http://34.216.151.246";

  @override
  Future<Map<String, dynamic>> get header async {
    return {
      "accept": "application/json",
      "authorization": "Bearer " + await _userData.getToken(),
    };
  }

  @override
  String get path {
    return when<String>(
        // register: (String email, String username, String password,
        //         String phone) =>
        //     '/user/registration?email=$email&fullName=$username&password=$password&phone=$phone',
        login: (String email, String password) =>
            '/user/login?email=$email&password=$password',
        // createProduct: (
        //   String barcode, String name, String merchantId,
        //   int purchasePrice, int sellingPrice, int amount,
        //   String unitType, int categoryId) => '/v1/product/create',
        // createProduct: () => '/v1/product/create',
        filterProduct: () => '/v1/product/filter',
        // Waybill - прием товаров
        filterWaybill: () => '/v1/waybill/filter',
        createWaybill: () => '/v1/waybill/create',
        addProductToWaybill: (Map<String, dynamic> data) =>
            '/v1/waybill/add/product',
        deleteWaybill: (String merchantId, int id) =>
            '/v1/waybill/$merchantId/$id',
        getWaybillProducts: (_) => '/v1/waybill/product/get',
        getRevisionProducts: (_) => '/v1/inventory/product/get',
        deleteRevision: (String merchantId, int id) =>
            '/v1/inventory/$merchantId/$id');
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => 'GET',
      login: (String email, String password) => 'POST',
      // register:
      //     (String email, String username, String password, String phone) =>
      //         'POST',
      // createProduct: (
      //   String barcode, String name, String merchantId,
      //   int purchasePrice, int sellingPrice, int amount,
      //   String unitType, int categoryId) => 'POST'
      // createProduct: () => 'POST',
      filterProduct: () => 'POST',
      filterWaybill: () => 'POST',
      createWaybill: () => 'POST',
      addProductToWaybill: (Map<String, dynamic> data) => 'POST',
      deleteWaybill: (String merchantId, int id) => 'DELETE',
      getWaybillProducts: (_) => 'POST',
      getRevisionProducts: (_) => 'POST',
      deleteRevision: (String merchantId, int id) => 'DELETE',
    );
  }

  @override
  dynamic get body {
    return maybeWhen(
      orElse: () {
        return null;
      },
      login: (String email, String password) => null,
      // register:
      //     (String email, String username, String password, String phone) =>
      //         null,
      filterProduct: () => {
        "merchant_id": "helloworld",
        "name": "",
        "barcode": "",
        "from": 0,
        "size": 0
      },
      filterWaybill: () => {"merchant_id": "kdfjksjf"},
      // filterWaybill: () => {"merchant_id": merchantId},
      createWaybill: () => {
        "merchant_id": "kdfjksjf",
        "employee": "kfdjkjf",
      },
      addProductToWaybill: (Map<String, dynamic> data) {
        return FormData.fromMap(data);

        // "barcode": "jdfksdsjfksjd",
        // "name": "dfjaksjdfkj",
        // "received_amount": 2,
        // "amount": 1,
        // "waybill_id": _userData.getWaybillId(),
        // "purchase_price": 500,
        // "selling_price": 2000,
        // "total": 500
      },
      getWaybillProducts: (int id) => {
        "waybill_id": id,
      },
      getRevisionProducts: (int id) => {
        "inventory_id": id,
      },
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}

//     createProduct: (
//       String barcode, String name, String merchantId,
//       int purchasePrice, int sellingPrice, int amount,
//       String unitType, String categoryName) => {
//         "barcode": barcode,
//         "name": name,
// "merchant_id": merchantId,
//   "purchase_price": purchasePrice,
//   "selling_price": sellingPrice,
//   "amount": amount,
//   "unit_type": unitType,
//   "category_name": categoryName,
//       }
