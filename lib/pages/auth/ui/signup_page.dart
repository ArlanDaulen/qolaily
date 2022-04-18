import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/pages/auth/provider/signup_provider.dart';

import '../../../base/base_provider.dart';
import '../../../shared/default_button.dart';
import '../../../shared/default_text.dart';
import '../../../shared/size_config.dart';
import '../../../shared/theme.dart';
import '../../index/ui/index_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<SignUpProvider>(
      onReady: (p0) => p0.init(context),
      model: SignUpProvider(),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
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
                      text: 'Регистрация',
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    DefaultText(
                      text: 'Чтобы Вы могли начать работу',
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
                            text: 'Фамилия и Имя',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(6),
                          ),
                          TextFormField(
                            controller: model.userNameController,
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
                            height: getProportionateScreenHeight(16),
                          ),
                          DefaultText(
                            text: 'Наименование компании',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(6),
                          ),
                          TextFormField(
                            controller: model.companyNameController,
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
                            height: getProportionateScreenHeight(16),
                          ),
                          DefaultText(
                            text: 'БИН компании',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(6),
                          ),
                          TextFormField(
                            controller: model.companyBINController,
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
            ),
          ),
        );
      },
    );
  }
}
