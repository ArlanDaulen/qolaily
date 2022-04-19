import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';

import '../../../shared/size_config.dart';

class GoodsAcceptProvider extends BaseBloc {
  TextEditingController barcodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController costPriceController = TextEditingController();
  TextEditingController markupController = TextEditingController();
  TextEditingController sellingPriceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }
}
