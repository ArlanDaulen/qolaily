import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/client/revision.dart';
import 'package:qolaily/app/data/models/revision_products_model.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/shared/size_config.dart';

class RevisionProductsProvider extends BaseBloc {
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
  final RevisionService _waybillService = RevisionService();
  // List<WaybillProductsModel> waybillModel = [];
  List<RevisionProductsModel> revisionModel = [];

  init(context, int id) async {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    await getRevisionProducts(id);
    setLoading(false);
  }

  getRevisionProducts(int id) async {
    Result<List<RevisionProductsModel>, NetworkError> revisionResponse =
        await _waybillService.getRevisionProducts(id);

    revisionResponse.when(success: (response) {
      revisionModel = response;
      log("Success filterWaybill (provider)");
    }, failure: (error) {
      log("Error filter waybill (provider)");
    });
  }
}
