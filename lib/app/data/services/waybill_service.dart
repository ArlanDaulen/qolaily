import 'package:qolaily/app/client/json_api_client.dart';
import 'package:qolaily/app/data/models/waybill_add_product.dart';
import 'package:qolaily/app/data/models/waybill_create_model.dart';
import 'package:qolaily/app/data/models/waybill_model.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/core/network/layers/network_executer.dart';

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
}
