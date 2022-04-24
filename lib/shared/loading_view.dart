import 'package:flutter/material.dart';
import 'package:qolaily/shared/theme.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key, this.color = AppColors.primaryColor})
      : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
