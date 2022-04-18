import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/auth/provider/login_provider.dart';
import 'package:qolaily/shared/default_button.dart';
import 'package:qolaily/shared/size_config.dart';

import '../../../shared/default_text.dart';
import '../../../shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<LoginProvider>(
      onReady: (p0) => p0.init(context),
      model: LoginProvider(),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                getProportionateScreenHeight(100),
              ),
              child: Container(
                color: AppColors.primaryColor,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Qolaily',
                          style: GoogleFonts.yesevaOne(
                            textStyle: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: getProportionateScreenHeight(36),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'online-kassa',
                          style: GoogleFonts.yesevaOne(
                            textStyle: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: getProportionateScreenHeight(14),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultText(
                      text: 'Добро пожаловать!'.toUpperCase(),
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    DefaultText(
                      text: 'Войдите, чтобы начать работу',
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                    ),
                    Form(
                      key: model.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultText(
                            text: 'E-mail',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(6),
                          ),
                          TextFormField(
                            controller: model.emailController,
                            cursorColor: AppColors.systemBlackColor,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: getProportionateScreenWidth(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.greyColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.greyColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          DefaultText(
                            text: 'Пароль',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(6),
                          ),
                          TextFormField(
                            controller: model.passwordController,
                            cursorColor: AppColors.systemBlackColor,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: getProportionateScreenWidth(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.greyColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.greyColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(48),
                    ),
                    DefaultButton(
                      text: 'Войти в систему',
                      width: getProportionateScreenWidth(214),
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
