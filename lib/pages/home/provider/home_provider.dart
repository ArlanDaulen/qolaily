import 'package:flutter/cupertino.dart';
import 'package:qolaily/app/client/home.dart';
import 'package:qolaily/app/data/models/statistics_model.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class HomeProvider extends BaseBloc {
  StatisticsModel? statisticsModel;

  init(BuildContext context) async {
    setLoading(true);
    SizeConfig().init(context);
    await getStatistics();
    setLoading(false);
  }

  getStatistics() async {
    final response = await HomeService().getStatistics();
    statisticsModel = response;
    notifyListeners();
  }
}
