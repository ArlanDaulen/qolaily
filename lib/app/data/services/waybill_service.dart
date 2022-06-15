import 'dart:convert';
import 'dart:developer';

import 'package:qolaily/app/client/json_api_client.dart';
import 'package:qolaily/app/data/models/waybill_add_product.dart';
import 'package:qolaily/app/data/models/waybill_create_model.dart';
import 'package:qolaily/app/data/models/waybill_model.dart';
import 'package:qolaily/app/data/models/waybill_products_model.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/core/network/layers/network_executer.dart';

import 'package:http/http.dart' as http;

class WaybillService {
  Future<Result<List<WaybillModel>, NetworkError>> filterWaybill() async {
    return NetworkExecuter.execute(
        route: const PlaceHolderClient.filterWaybill(),
        responseType: WaybillModel());
  }

  Future<Result<WaybillCreateModel, NetworkError>> createWaybill() async {
    return NetworkExecuter.execute(
        route: const PlaceHolderClient.createWaybill(),
        responseType: WaybillCreateModel());
  }

  Future<Result<dynamic, NetworkError>> addProductToWaybill(
      Map<String, dynamic> data) async {
    return NetworkExecuter.execute(
        route: PlaceHolderClient.addProductToWaybill(data));
  }

  Future<int> add(
    String barcode,
    String name,
    int receivedAmount,
    int amount,
    waybillId,
    int purchasePrice,
    int sellingPrice,
    int total,
  ) async {
    final response = await http.post(
        Uri.parse(
          'http://34.216.151.246/v1/waybill/add/product',
        ),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "barcode": barcode,
          "name": name,
          "received_amount": receivedAmount,
          "amount": amount,
          "waybill_id": waybillId,
          "purchase_price": purchasePrice,
          "selling_price": sellingPrice,
          "total": total
        }));
    log(response.statusCode.toString());

    if (response.statusCode == 200) {
      log("Success 667");
    } else {
      log('Failure 667');
    }
    return response.statusCode;
  }

  Future<Result<dynamic, NetworkError>> deleteWaybill(
      String merchantID, int id) async {
    return NetworkExecuter.execute(
        route: PlaceHolderClient.deleteWaybill(merchantID, id));
  }

  // Future<int> getProducts(int id) async {
  //   final response = await http.post(
  //       Uri.parse('http://34.216.151.246/v1/waybill/product/get'),
  //       headers: {'Content-Type': 'application/json'},
  //       body: jsonEncode({"waybill_id": id}));

  //   log(response.statusCode.toString());

  //   if (response.statusCode == 200) {
  //     log("Success 667");
  //   } else {
  //     log('Failure 667');
  //   }
  //   return response.statusCode;
  // }

  Future<Result<List<WaybillProductsModel>, NetworkError>> getWaybillProducts(
      int id) async {
    return NetworkExecuter.execute(
        route: PlaceHolderClient.getWaybillProducts(id),
        responseType: WaybillProductsModel());
  }
}
