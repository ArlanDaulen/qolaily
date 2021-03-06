import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/data/models/waybill_products_model.dart';
import 'package:qolaily/app/data/services/waybill_service.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/shared/size_config.dart';

class ListOfProductsProvider extends BaseBloc {
  TextEditingController barcodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController(); // кол-во
  TextEditingController balanceController = TextEditingController(); // остаток
  // TextEditingController oddsController = TextEditingController();
  TextEditingController costPriceController =
      TextEditingController(); // себестоимость
  TextEditingController marginController = TextEditingController(); // наценка
  TextEditingController sellingPriceController =
      TextEditingController(); // цена продажи
  TextEditingController totalPriceController = TextEditingController(); // итого
  Size? size;
  final WaybillService _waybillService = WaybillService();
  List<WaybillProductsModel> waybillModel = [];

  init(context, int id) async {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    await getWaybillProducts(id);
    setLoading(false);
  }

  getWaybillProducts(int id) async {
    Result<List<WaybillProductsModel>, NetworkError> waybillResponse =
        await _waybillService.getWaybillProducts(id);

    waybillResponse.when(success: (response) {
      waybillModel = response;
      log("Success filterWaybill (provider)");
    }, failure: (error) {
      log("Error filter waybill (provider)");
    });
  }
}
