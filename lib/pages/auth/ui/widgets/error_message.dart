import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/default_text.dart';
import '../../../../shared/size_config.dart';
import '../../../../shared/theme.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(253),
      height: getProportionateScreenHeight(270),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultText(
            text: 'Something went wrong!',
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          const Spacer(),
          DefaultText(
            text: message,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.greyColor,
          ),
          const Spacer(
            flex: 6,
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              width: getProportionateScreenWidth(117),
              height: getProportionateScreenHeight(48),
              child: DefaultText(
                text: 'Ok',
                fontWeight: FontWeight.w500,
                color: AppColors.whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
