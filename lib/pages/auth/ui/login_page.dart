import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/auth/provider/login_provider.dart';
import 'package:qolaily/pages/index/ui/index_page.dart';
import 'package:qolaily/shared/default_button.dart';
import 'package:qolaily/shared/loading_view.dart';
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
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.primaryColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                getProportionateScreenHeight(120),
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
            body: model.isLoading
                ? const LoadingView(
                    color: AppColors.whiteColor,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(24),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(38),
                          vertical: getProportionateScreenHeight(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.whiteColor,
                        ),
                        height: getProportionateScreenHeight(260),
                        child: Form(
                          key: model.formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DefaultText(
                                text: 'ВОЙДИТЕ, ЧТОБЫ НАЧАТЬ РАБОТУ',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(15),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.greyColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppSvgImages.email,
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(8),
                                      ),
                                      const VerticalDivider(
                                        color: AppColors.greyColor,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: model.emailController,
                                          cursorColor:
                                              AppColors.systemBlackColor,
                                          style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                              color: AppColors.systemBlackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                            ),
                                          ),
                                          decoration: const InputDecoration(
                                            // contentPadding: EdgeInsets.symmetric(
                                            //   vertical: 0,
                                            //   horizontal: getProportionateScreenWidth(10),
                                            // ),
                                            isDense: true,
                                            contentPadding: EdgeInsets.zero,
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(15),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.greyColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppSvgImages.password,
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(8),
                                      ),
                                      const VerticalDivider(
                                        color: AppColors.greyColor,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: model.passwordController,
                                          cursorColor:
                                              AppColors.systemBlackColor,
                                          obscureText: true,
                                          style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                              color: AppColors.systemBlackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                            ),
                                          ),
                                          decoration: const InputDecoration(
                                            // contentPadding: EdgeInsets.symmetric(
                                            //   vertical: 0,
                                            //   horizontal: getProportionateScreenWidth(10),
                                            // ),
                                            contentPadding: EdgeInsets.zero,
                                            isDense: true,
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DefaultText(
                                    text: 'Регистрация',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                  ),
                                  DefaultText(
                                    text: 'Забыли пароль?',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Expanded(
                                flex: 5,
                                child: GestureDetector(
                                  onTap: () => model.login(context),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: getProportionateScreenWidth(150),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 2,
                                      ),
                                      color:
                                          AppColors.primaryColor.withOpacity(0),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: DefaultText(
                                      text: 'ВХОД В СИСТЕМУ',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }

  _buildOldVersion(LoginProvider model, BuildContext context) {
    return Padding(
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
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => IndexPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
