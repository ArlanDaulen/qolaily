import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/good_accept/provider/create_product_accept_provider.dart';
import 'package:qolaily/pages/good_accept/provider/good_accept_provider.dart';
import 'package:qolaily/shared/default_button.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/loading_view.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';
import 'package:qolaily/shared/ui_helper.dart';

class CreateProductAccept extends StatelessWidget {
  const CreateProductAccept({Key? key, required this.provider})
      : super(key: key);

  final GoodsAcceptProvider provider;

  @override
  Widget build(BuildContext context) {
    return BaseProvider<CreateProductAcceptProvider>(
      model: CreateProductAcceptProvider(),
      onReady: (p0) => p0.init(context),
      builder: (context, model, child) {
        return model.isLoading
            ? const LoadingView()
            : Scaffold(
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
                              text: 'Прием товаров',
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                body: SingleChildScrollView(
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
                              DefaultText(text: '    Создание прием товаров'),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(13),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DefaultText(
                                      text: 'Дата',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(5),
                                    ),
                                    SizedBox(
                                      // width: 300,
                                      height: 30,
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          color:
                                              AppColors.defaultBackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(8),
                                            vertical:
                                                getProportionateScreenHeight(7),
                                          ),
                                          child: Text(
                                            provider
                                                .waybillCreateModel!.createdOn!,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.systemBlackColor,
                                              fontSize:
                                                  getProportionateScreenHeight(
                                                      10),
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // _buildController(provider.waybillCreateModel!.createdOn!, 'Дата'),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              // _buildController(model.invoiceNumberController,
                              //     'Номер накладной'),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(13),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DefaultText(
                                      text: 'Номер наклодной',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(5),
                                    ),
                                    SizedBox(
                                      // width: 300,
                                      height: 30,
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          color:
                                              AppColors.defaultBackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(8),
                                            vertical:
                                                getProportionateScreenHeight(7),
                                          ),
                                          child: Text(
                                            provider.waybillCreateModel!
                                                .documentNumber!,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.systemBlackColor,
                                              fontSize:
                                                  getProportionateScreenHeight(
                                                      10),
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              // _buildController(
                              //     model.commentController, 'Комментарий'),
                              // SizedBox(
                              //   height: getProportionateScreenHeight(10),
                              // ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(
                          getProportionateScreenHeight(15),
                        ),
                        ListView.separated(
                          padding: const EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          separatorBuilder: (_, index) => const SizedBox(
                            height: 15,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
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
                                      horizontal:
                                          getProportionateScreenWidth(12),
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
                                      horizontal:
                                          getProportionateScreenWidth(12),
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
                                                  // _buildController(
                                                  //     model.oddsController,
                                                  //     'Разница'),
                                                  // UIHelper.verticalSpace(
                                                  //   getProportionateScreenHeight(
                                                  //       10),
                                                  // ),
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
                                                  // _buildController(
                                                  //     model.costPriceController,
                                                  //     'Себестоим.'),
                                                  // UIHelper.verticalSpace(
                                                  //   getProportionateScreenHeight(
                                                  //       10),
                                                  // ),
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
                                                  model.costPriceController,
                                                  'Себестоим.'),
                                            ),
                                            Expanded(
                                              child: _buildController(
                                                  model.sellingPriceController,
                                                  'Цена продажи'),
                                            ),
                                            Expanded(
                                              child: _buildController(
                                                  model.totalPriceController,
                                                  'Итого'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  UIHelper.verticalSpace(
                                    getProportionateScreenHeight(5),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          AppSvgImages.delete,
                                          width: 25,
                                          height: 25,
                                        ),
                                      ),
                                      UIHelper.horizontalSpace(10),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
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
                                  press: () {
                                    Navigator.pop(context);
                                  },
                                  text: 'Сохранить как черновик',
                                  color: AppColors.greyColor,
                                  width: model.size!.width * 0.38,
                                ),
                                const SizedBox(width: 20),
                                DefaultButton(
                                  press: () {
                                    model.addProductToWaybill(
                                        context, provider);
                                  },
                                  text: 'Провести прием товаров',
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
