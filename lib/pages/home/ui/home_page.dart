import 'package:flutter/material.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/home/provider/home_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<HomeProvider>(
      onReady: (p0) => p0.init(context),
      model: HomeProvider(),
      builder: (context, model, child) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(24),
          ),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getProportionateScreenWidth(152),
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(30),
                      bottom: getProportionateScreenHeight(13),
                    ),
                    color: AppColors.whiteColor,
                    child: Column(
                      children: [
                        DefaultText(
                          text: '0',
                          fontSize: 25,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        DefaultText(
                          text: 'Сумма продаж',
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(152),
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(30),
                      bottom: getProportionateScreenHeight(13),
                    ),
                    color: AppColors.whiteColor,
                    child: Column(
                      children: [
                        DefaultText(
                          text: '0',
                          fontSize: 25,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        DefaultText(
                          text: 'Кол-во продаж',
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getProportionateScreenWidth(152),
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(30),
                      bottom: getProportionateScreenHeight(13),
                    ),
                    color: AppColors.whiteColor,
                    child: Column(
                      children: [
                        DefaultText(
                          text: '0',
                          fontSize: 25,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        DefaultText(
                          text: 'Сумма возвратов',
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(152),
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(30),
                      bottom: getProportionateScreenHeight(13),
                    ),
                    color: AppColors.whiteColor,
                    child: Column(
                      children: [
                        DefaultText(
                          text: '0',
                          fontSize: 25,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        DefaultText(
                          text: 'Кол-во возвратов',
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    alignment: Alignment.topLeft,
                    width: double.maxFinite,
                    color: AppColors.whiteColor,
                    child: Container(
                      width: constraints.maxWidth * 0.55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(188),
                        ),
                        color: AppColors.greenColor,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(24),
                        vertical: getProportionateScreenHeight(10),
                      ),
                      alignment: Alignment.topLeft,
                      child: DefaultText(
                        text: 'Прибыль',
                        color: AppColors.whiteColor,
                      ),
                    ),
                  );
                },
              ),
              const Spacer(),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    alignment: Alignment.topLeft,
                    width: double.maxFinite,
                    color: AppColors.whiteColor,
                    child: Container(
                      width: constraints.maxWidth * 0.55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(188),
                        ),
                        color: AppColors.redColor,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(24),
                        vertical: getProportionateScreenHeight(10),
                      ),
                      alignment: Alignment.topLeft,
                      child: DefaultText(
                        text: 'Расходы',
                        color: AppColors.whiteColor,
                      ),
                    ),
                  );
                },
              ),
              const Spacer(
                flex: 7,
              ),
            ],
          ),
        );
      },
    );
  }
}
