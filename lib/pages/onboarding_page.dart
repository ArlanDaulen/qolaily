import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/pages/auth/ui/login_page.dart';
import 'package:qolaily/pages/auth/ui/signup_page.dart';
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
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignUpPage(),
                  ),
                ),
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
            Text(
              'Qolaily',
              style: GoogleFonts.yesevaOne(
                textStyle: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: getProportionateScreenHeight(50),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'online-kassa',
              style: GoogleFonts.yesevaOne(
                textStyle: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: getProportionateScreenHeight(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
