import 'package:flutter/cupertino.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class KassaProvider extends BaseBloc {
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
