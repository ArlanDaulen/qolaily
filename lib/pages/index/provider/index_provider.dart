import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class IndexProvider extends BaseBloc {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  int navIndex = 0;
  String currentTitle = 'Главная';

  List<String> titles = [
    'Главная',
    'КАССА',
    'Каталог',
    'Категории',
    'Прием товаров',
    'Ревизия',
    'Партнеры',
  ];

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }

  setNavIndex(int index) {
    navIndex = index;
    currentTitle = titles[index];
    notifyListeners();
  }
}
