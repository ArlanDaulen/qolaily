import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class CreateProductAcceptProvider extends BaseBloc {
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

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    setLoading(false);
  }
}
