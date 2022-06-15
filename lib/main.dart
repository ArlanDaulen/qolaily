// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qolaily/app/main/user_data.dart';

import 'app/main/app.dart';
import 'app/main/app_model.dart';

String? merchantId;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  merchantId = await UserData().getMerchantId();

  /// Set device orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final model = MyAppModel();
  await model.init();

  runApp(
    MyApp(model: model),
    // EasyLocalization(
    //     supportedLocales: const [
    //       Locale('en', 'EN'),
    //       Locale('ru', 'RU'),
    //       Locale('kk', 'KK'),
    //     ],
    //     path: 'assets/lang', // <-- change the path of the translation files
    //     fallbackLocale: const Locale('en', 'EN'),
    //     child: MyApp(
    //       model: model,
    //     )),
  );
}
