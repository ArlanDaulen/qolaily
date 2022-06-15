import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/data/models/waybill_add_product.dart';
import 'package:qolaily/app/data/services/waybill_service.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/pages/good_accept/provider/good_accept_provider.dart';
import 'package:qolaily/shared/size_config.dart';

class CreateProductAcceptProvider extends BaseBloc {
  TextEditingController dateController = TextEditingController();
  TextEditingController invoiceNumberController =
      TextEditingController(); // номер наклодной
  // TextEditingController commentController = TextEditingController();
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

  // TextEditingController priceController = TextEditingController();
  // TextEditingController totalController = TextEditingController();
  Size? size;
  final WaybillService _waybillService = WaybillService();
  AddProductToWaybillModel? addProductToWaybillModel;
  final UserData _userData = UserData();

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    setLoading(false);
  }

  addProductToWaybill(context, GoodsAcceptProvider provider) async {
    var data = {
      "barcode": barcodeController.text,
      "name": nameController.text,
      "received_amount": int.parse(amountController.text),
      "amount": int.parse(balanceController.text),
      "waybill_id": _userData.getWaybillId(),
      "purchase_price": int.parse(costPriceController.text),
      "selling_price": int.parse(sellingPriceController.text),
      "total": int.parse(totalPriceController.text)
    };
    Result<dynamic, NetworkError> p =
        await _waybillService.addProductToWaybill(data);

    p.when(success: (response) {
      // addProductToWaybillModel = response;
      Navigator.pop(context);
      // Navigator.of(context).pop(provider.init(context));
      log("Succes in add Product Waybill (provider)");
    }, failure: (error) {
      log("Error in create Product waybill. Error: $error");
    });
  }
}
