import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';
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
  init(context) async {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;

    setLoading(false);
  }
}
