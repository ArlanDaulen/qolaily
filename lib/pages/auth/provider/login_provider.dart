import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:qolaily/app/client/auth.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/home/ui/home_page.dart';
import 'package:qolaily/pages/index/ui/index_page.dart';
import 'package:qolaily/shared/size_config.dart';

import '../ui/widgets/error_message.dart';

class LoginProvider extends BaseBloc {
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }

  login(BuildContext context) async {
    setLoading(true);
    Response response =
        await Auth().login(emailController.text, passwordController.text);
    log(response.headers.length.toString());
    if (response.statusCode == 200) {
      await Auth()
          .auth(response.headers.values.toList()[5].toString().substring(7));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => IndexPage(),
          ),
          (route) => false);
    } else {
      log(json.decode(response.body)['status'].toString());
      showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) => AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          content: ErrorMessage(
            message: json.decode(response.body)['message'],
          ),
        ),
      );
    }
    setLoading(false);
    notifyListeners();
  }
}
