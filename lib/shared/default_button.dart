import 'package:flutter/material.dart';

import '../shared/theme.dart';
import 'default_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    this.text,
    this.press,
    this.color = AppColors.primaryColor,
    this.textColor = AppColors.whiteColor,
    this.width = double.maxFinite,
    this.height = 50,
    this.isButtonEnabled = true,
    this.isWithShadow = false,
  });
  final String? text;
  final Function? press;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final bool isButtonEnabled;
  final bool isWithShadow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: isWithShadow
              ? AppColors.greyColor
              : AppColors.primaryColor.withOpacity(0),
          primary: isButtonEnabled ? color : color.withOpacity(0.5),
        ),
        onPressed: press as void Function()?,
        child: DefaultText(
          text: text!,
          color: textColor,
        ),
      ),
    );
  }
}
