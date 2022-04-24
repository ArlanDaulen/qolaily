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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
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
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: DefaultButton(
                  text: 'ВОЙТИ',
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  ),
                  color: AppColors.whiteColor,
                  textColor: AppColors.systemBlackColor,
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
