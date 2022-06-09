import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/catalog/ui/catalog_page.dart';
import 'package:qolaily/pages/categories/ui/categories_page.dart';
import 'package:qolaily/pages/good_accept/ui/good_accept_page.dart';
import 'package:qolaily/pages/home/ui/home_page.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';
import 'package:qolaily/pages/index/ui/drawer.dart';
import 'package:qolaily/pages/revision/ui/revision_page.dart';

import '../../../shared/default_text.dart';
import '../../../shared/size_config.dart';
import '../../../shared/theme.dart';
import '../../kassa/ui/kassa_page.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<IndexProvider>(
      onReady: (p0) => p0.init(context),
      model: IndexProvider(),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.defaultBackgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                getProportionateScreenHeight(125),
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
                    Row(
                      children: [
                        IconButton(
                          onPressed: () =>
                              model.globalKey.currentState!.openDrawer(),
                          icon: const Icon(
                            Icons.menu,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        DefaultText(
                          text: model.currentTitle,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            key: model.globalKey,
            drawer: CustomDrawer(
              indexModel: model,
            ),
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(15),
                    horizontal: getProportionateScreenWidth(15),
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultText(
                            text: 'ТОО IT COMMUNICATION',
                            fontWeight: FontWeight.w500,
                          ),
                          DefaultText(
                            text: 'ИИН/БИН 1234567891011',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       width: getProportionateScreenWidth(54),
                      //       padding: EdgeInsets.symmetric(
                      //         vertical: getProportionateScreenHeight(10),
                      //       ),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(5),
                      //         color: AppColors.defaultBackgroundColor,
                      //       ),
                      //       child: Column(
                      //         children: [
                      //           DefaultText(
                      //             text: '12 345',
                      //             fontSize: 7,
                      //           ),
                      //           DefaultText(
                      //             text: 'Баланс',
                      //             color: const Color(0xffA8A8A8),
                      //             fontSize: 8,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: getProportionateScreenWidth(15),
                      //     ),
                      //     Container(
                      //       width: getProportionateScreenWidth(54),
                      //       padding: EdgeInsets.symmetric(
                      //         vertical: getProportionateScreenHeight(10),
                      //       ),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(5),
                      //         color: AppColors.defaultBackgroundColor,
                      //       ),
                      //       child: Column(
                      //         children: [
                      //           DefaultText(
                      //             text: '5',
                      //             fontSize: 7,
                      //           ),
                      //           DefaultText(
                      //             text: 'Сотрудники',
                      //             color: const Color(0xffA8A8A8),
                      //             fontSize: 8,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(),
                    ],
                  ),
                ),
                Flexible(
                  child: _body[model.navIndex],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> _body = [
    HomePage(),
    KassaPage(),
    CatalogPage(),
    CategoriesPage(),
    GoodsAcceptPage(),
    RevisionPage(),
    // PartnersPage(),
  ];
}
