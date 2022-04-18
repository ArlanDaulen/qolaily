import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';
import 'package:qolaily/shared/size_config.dart';

class DrawerProvider extends IndexProvider {
  String dropDownValue = 'Жадигер Багдат';

  List<String> items = [
    'Жадигер Багдат',
    'Даулен Арлан',
    'И все',
  ];

  initDrawer(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(true);
  }

  setDropDownValue(dynamic value) {
    dropDownValue = value;
    notifyListeners();
  }

}
