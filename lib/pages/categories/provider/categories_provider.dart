import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';

import '../../../shared/size_config.dart';

class CategoriesProvider extends BaseBloc {
  TextEditingController nameController = TextEditingController();
  TextEditingController characteristicController = TextEditingController();
  Size? size;

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    setLoading(false);
  }
}
