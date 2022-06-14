import 'package:flutter/material.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class IndexProvider extends BaseBloc {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  int navIndex = 0;
  String currentTitle = 'Главная';
  UserData _userData = UserData();

  String? iin;

  List<String> titles = [
    'Главная',
    'КАССА',
    'Каталог',
    'Категории',
    'Прием товаров',
    'Ревизия',
    'Партнеры',
  ];

  init(BuildContext context) async {
    setLoading(true);
    SizeConfig().init(context);
    iin = await _userData.getIIN();
    setLoading(false);
  }

  setNavIndex(int index) {
    navIndex = index;
    currentTitle = titles[index];
    notifyListeners();
  }
}
