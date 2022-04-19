import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/index/provider/drawer_provider.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key, required this.indexModel}) : super(key: key);
  final IndexProvider indexModel;

  @override
  Widget build(BuildContext context) {
    return BaseProvider<DrawerProvider>(
      onReady: (p0) => p0.initDrawer(context),
      model: DrawerProvider(),
      builder: (context, model, child) {
        return Drawer(
          backgroundColor: AppColors.primaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(48),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: DrawerHeader(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(20),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(40),
                    ),
                    child: Column(
                      children: [
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
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.person,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                    ),
                    DropdownButton<String>(
                      value: model.dropDownValue,
                      underline: const SizedBox(
                        height: 0,
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.whiteColor,
                      ),
                      dropdownColor: AppColors.primaryColor,
                      items: model.items.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: DefaultText(
                            color: AppColors.whiteColor,
                            fontSize: 18,
                            text: e,
                          ),
                        );
                      }).toList(),
                      onChanged: (dynamic value) =>
                          model.setDropDownValue(value),
                    ),
                  ],
                ),
                const Divider(
                  color: AppColors.whiteColor,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                _buildMenuItem(
                    context, indexModel, 0, AppSvgImages.home, 'Главная'),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                _buildMenuItem(
                    context, indexModel, 1, AppSvgImages.kassa, 'КАССА'),
                SizedBox(
                  height: getProportionateScreenHeight(24),
                ),
                DefaultText(
                  text: 'Работа с товарами',
                  color: AppColors.whiteColor,
                  fontSize: 16,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                _buildMenuItem(
                    context, indexModel, 2, AppSvgImages.catalog, 'Каталог'),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                _buildMenuItem(context, indexModel, 3, AppSvgImages.categories,
                    'Категории'),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                _buildMenuItem(context, indexModel, 4, AppSvgImages.goodAccept,
                    'Прием товаров'),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                _buildMenuItem(
                    context, indexModel, 5, AppSvgImages.revision, 'Ревизия'),
                SizedBox(
                  height: getProportionateScreenHeight(26),
                ),
                // DefaultText(
                //   text: 'Администрирование',
                //   color: AppColors.whiteColor,
                //   fontSize: 16,
                // ),
                // SizedBox(
                //   height: getProportionateScreenHeight(16),
                // ),
                // _buildMenuItem(
                //     context, indexModel, 6, AppSvgImages.partners, 'Партнеры'),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  GestureDetector _buildMenuItem(BuildContext context, IndexProvider model,
      int index, String svg, String text) {
    return GestureDetector(
      onTap: () {
        model.setNavIndex(index);
        Navigator.pop(context);
      },
      child: Container(
        color: AppColors.primaryColor.withOpacity(0),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
            ),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
            DefaultText(
              text: text,
              fontSize: 18,
              fontWeight:
                  model.navIndex == index ? FontWeight.w900 : FontWeight.w300,
              color: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
