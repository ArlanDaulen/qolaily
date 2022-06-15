import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/data/models/waybill_add_product.dart';
import 'package:qolaily/app/data/services/waybill_service.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/pages/good_accept/provider/good_accept_provider.dart';
import 'package:qolaily/pages/good_accept/ui/list_of_products_page.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';
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

  int count = 1;

  IndexProvider? indexProvider;

  init(BuildContext context, IndexProvider _indexProvider) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    indexProvider = _indexProvider;
    setLoading(false);
  }

  addProductToWaybill(context, GoodsAcceptProvider provider) async {
    log(balanceController.text);
    final waubill = await _userData.getWaybillId();
    log('WayBillId: ' + waubill.toString());
    var data = {
      "barcode": barcodeController.text,
      "name": nameController.text,
      "received_amount": num.parse(amountController.text),
      "amount": num.parse(balanceController.text),
      "waybill_id": await _userData.getWaybillId(),
      "purchase_price": num.parse(costPriceController.text),
      "selling_price": num.parse(sellingPriceController.text),
      "total": num.parse(totalPriceController.text)
      // "barcode": "jdfksdsjfksjdassas",
      // "name": "dfjaksjdfkj",
      // "received_amount": 2,
      // "amount": 1,
      // "waybill_id": _userData.getWaybillId(),
      // "purchase_price": 3,
      // "selling_price": 500,
      // "total": 2000
    };
    int statusCode = await _waybillService.add(
      barcodeController.text,
      nameController.text,
      int.parse(amountController.text),
      int.parse(balanceController.text),
      waubill,
      int.parse(costPriceController.text),
      int.parse(sellingPriceController.text),
      int.parse(totalPriceController.text),
    );

    if (statusCode == 200) {
      // indexProvider!.setNavIndex(0);
      // notifyListeners();
      Navigator.pop(context);
    }

    // p.when(success: (response) {
    //   // addProductToWaybillModel = response;
    //   provider.waybillModel = response;
    //   Navigator.pop(context);
    //   // Navigator.of(context).pop(provider.init(context));
    //   log("Succes in add Product Waybill (provider)");
    // }, failure: (error) {
    //   log("Error in create Product waybill. Error: $error");
    // });
  }

  incrementCount() {
    count++;
    notifyListeners();
  }
}
