import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import '../../base/base_provider.dart';
import '../../shared/theme.dart';
import 'app_model.dart';
import 'navigator_state.dart';
import 'no_internet_screen.dart';

class MyApp extends StatelessWidget {
  final MyAppModel model;

  MyApp({required this.model});

  @override
  Widget build(BuildContext context) {
    return BaseProvider<MyAppModel>(
      model: model,
      builder: (context, model, child) {
        return StreamBuilder<Object>(
          stream: model.connectionStatusController.stream,
          builder: (context, snapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Kettik',
              navigatorKey: GlobalVariable.navState,
              theme: ThemeData(
                primaryColor: AppColors.primaryColor,
                bottomSheetTheme: BottomSheetThemeData(
                  backgroundColor: AppColors.primaryColor.withOpacity(0),
                ),
                fontFamily: 'Manrope',
              ),
              home: snapshot.data == ConnectivityResult.none ||
                      snapshot.data == null
                  ? const NoInternetScreen()
                  : model.getHomeScreen(),
            );
          },
        );
      },
    );
  }
}
