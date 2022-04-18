import 'package:flutter/material.dart';
import 'package:qolaily/pages/auth/ui/login_page.dart';
import 'package:qolaily/shared/default_button.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
          vertical: getProportionateScreenHeight(33),
        ),
        child: Row(
          children: [
            Expanded(
              child: DefaultButton(
                text: 'ВОЙТИ',
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                ),
                color: AppColors.whiteColor,
                textColor: AppColors.systemBlackColor,
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Expanded(
              child: DefaultButton(
                text: 'Регистрация'.toUpperCase(),
                press: () {},
                color: AppColors.whiteColor,
                textColor: AppColors.systemBlackColor,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultText(
              text: 'Qolaily',
              color: AppColors.whiteColor,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            DefaultText(
              text: 'online-kassa',
              color: AppColors.whiteColor,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
