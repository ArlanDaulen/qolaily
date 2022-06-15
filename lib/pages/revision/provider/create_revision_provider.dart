import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/client/revision.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/revision/provider/revision_provider.dart';
import 'package:qolaily/shared/size_config.dart';

class CreateRevisionProvider extends BaseBloc {
  TextEditingController dateController = TextEditingController();
  TextEditingController invoiceNumberController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController barcodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController balanceController = TextEditingController();
  TextEditingController oddsController = TextEditingController();
  TextEditingController costPriceController = TextEditingController();
  TextEditingController marginController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  Size? size;

  RevisionService _service = RevisionService();
  RevisionProvider? provider;

  int? inventoryId;

  init(BuildContext context, RevisionProvider model) async {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    provider = model;
    await createInventory();
    setLoading(false);
  }

  createInventory() async {
    inventoryId = await _service.create('salam');
    notifyListeners();
    log(inventoryId.toString());
  }

  addProduct(BuildContext context) async {
    final repo = await _service.addRevision(
      context,
      barcodeController.text,
      nameController.text,
      int.parse(balanceController.text),
      int.parse(amountController.text),
      inventoryId,
      int.parse(costPriceController.text),
      int.parse(priceController.text),
      int.parse(totalController.text),
    );
    await provider!.getAllRevision();
    Navigator.pop(context);
  }
}
