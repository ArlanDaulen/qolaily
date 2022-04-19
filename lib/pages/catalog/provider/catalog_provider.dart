import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';

import '../../../shared/size_config.dart';

class CatalogProvider extends BaseBloc {
  TextEditingController cashController = TextEditingController();
  bool isCash = true;

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }

  setCash() {
    isCash = !isCash;
    notifyListeners();
  }
}
