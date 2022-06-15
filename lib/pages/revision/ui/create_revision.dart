import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/revision/provider/create_revision_provider.dart';
import 'package:qolaily/pages/revision/provider/revision_provider.dart';
import 'package:qolaily/shared/default_button.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/loading_view.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';
import 'package:qolaily/shared/ui_helper.dart';

class CreateRevision extends StatelessWidget {
  const CreateRevision({Key? key, required this.provider}) : super(key: key);

  final RevisionProvider provider;

  @override
  Widget build(BuildContext context) {
    return BaseProvider<CreateRevisionProvider>(
      model: CreateRevisionProvider(),
      onReady: (p0) => p0.init(context, provider),
      builder: (context, model, child) {
        return Scaffold(
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
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      DefaultText(
                        text: 'Ревизия',
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          body: model.isLoading
              ? const LoadingView()
              : SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    width: model.size!.width,
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenHeight(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          // width: 400,
                          // height: 400,
                          padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10),
                          ),
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultText(text: '    Создание ревизии'),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              _buildController(model.dateController, 'Дата'),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              _buildController(
                                  model.commentController, 'Комментарий'),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(
                          getProportionateScreenHeight(15),
                        ),
                        Container(
                          // width: 400,
                          // height: 400,
                          padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10),
                          ),
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(12),
                                  // vertical: getProportionateScreenHeight(9),
                                ),
                                child: Row(
                                  children: [
                                    DefaultText(text: 'No.  '),
                                    DefaultText(text: '1')
                                  ],
                                ),
                              ),
                              const Divider(
                                color: AppColors.greyColor,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(12),
                                  vertical: getProportionateScreenHeight(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              _buildController(
                                                  model.barcodeController,
                                                  'Штрихкод'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              _buildController(
                                                  model.amountController,
                                                  'Кол-во'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              _buildController(
                                                  model.oddsController,
                                                  'Разница'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              _buildController(
                                                  model.nameController,
                                                  'Наименование'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              _buildController(
                                                  model.balanceController,
                                                  'Остаток'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              _buildController(
                                                  model.costPriceController,
                                                  'Себестоим.'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // UIHelper.verticalSpace(10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: _buildController(
                                              model.marginController,
                                              'Наценка'),
                                        ),
                                        Expanded(
                                          child: _buildController(
                                              model.priceController, 'Цена.'),
                                        ),
                                        Expanded(
                                          child: _buildController(
                                              model.totalController, 'Итого.'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // UIHelper.verticalSpace(
                              //   getProportionateScreenHeight(5),
                              // ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     IconButton(
                              //       onPressed: () {},
                              //       icon: SvgPicture.asset(
                              //         AppSvgImages.delete,
                              //         width: 25,
                              //         height: 25,
                              //       ),
                              //     ),
                              //     UIHelper.horizontalSpace(10),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                        // ListView.separated(
                        //   padding: const EdgeInsets.all(0),
                        //   shrinkWrap: true,
                        //   physics: const NeverScrollableScrollPhysics(),
                        //   itemCount: 4,
                        //   separatorBuilder: (_, index) => const SizedBox(
                        //     height: 15,
                        //   ),
                        //   itemBuilder: (context, index) {
                        //     return ;
                        //   },
                        // ),
                        UIHelper.verticalSpace(
                          getProportionateScreenHeight(20),
                        ),
                        Container(
                          // padding: EdgeInsets.symmetric(
                          //   vertical: getProportionateScreenHeight(10),
                          // ),
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: getProportionateScreenHeight(10),
                                    horizontal:
                                        getProportionateScreenWidth(25)),
                                decoration: const BoxDecoration(
                                  color: AppColors.yellowColor,
                                ),
                                child: DefaultText(
                                  text: 'Итоговые суммы',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenHeight(10),
                                  horizontal: getProportionateScreenWidth(25),
                                ),
                                child: DefaultText(
                                  text: '',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(
                          getProportionateScreenHeight(20),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                DefaultButton(
                                  press: () {},
                                  text: 'Сохранить как черновик',
                                  color: AppColors.greyColor,
                                  width: model.size!.width * 0.38,
                                ),
                                SizedBox(width: 20),
                                DefaultButton(
                                  press: () {
                                    log('dawfwafaw');
                                    model.addProduct(context);
                                  },
                                  text: 'Провести ревизию',
                                  color: AppColors.greenColor,
                                  width: model.size!.width * 0.35,
                                ),
                              ],
                            ),
                            UIHelper.verticalSpace(
                              getProportionateScreenHeight(15),
                            ),
                            DefaultButton(
                              press: () {
                                Navigator.pop(context);
                              },
                              text: 'Отмена',
                              color: AppColors.redColor,
                              width: model.size!.width * 0.35,
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(
                          getProportionateScreenHeight(30),
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }

  Widget _buildController(
    TextEditingController controller,
    String name,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(13),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultText(
            text: name,
            fontWeight: FontWeight.w300,
            fontSize: 10,
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          SizedBox(
            // width: 300,
            height: 30,
            child: TextFormField(
              controller: controller,
              cursorColor: AppColors.systemBlackColor,
              style: TextStyle(
                color: AppColors.systemBlackColor,
                fontSize: getProportionateScreenHeight(10),
                fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.greyColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.greyColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                fillColor: AppColors.defaultBackgroundColor,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
