import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/revision/provider/list_of_revision_products_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/loading_view.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';
import 'package:qolaily/shared/ui_helper.dart';

class ListOfRevisionProducts extends StatelessWidget {
  const ListOfRevisionProducts({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return BaseProvider<RevisionProductsProvider>(
      model: RevisionProductsProvider(),
      onReady: (p0) => p0.init(context, id),
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
                              text: 'Список ревизии',
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
                              DefaultText(text: '    Список ревизии'),
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
                                            // model.waybillModel.createdOn,
                                            '16/07/2022',
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
                              _buildContainer('Номер накладной', '123456'),
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
                          itemCount: 1
                          // model.waybillModel.length
                          ,
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
                                                  // _buildController(
                                                  //     model.barcodeController,
                                                  //     'Штрихкод'),
                                                  _buildContainer(
                                                    'Штрихкод',
                                                    model.revisionModel[index]
                                                        .barcode!,
                                                    // '',
                                                  ),
                                                  UIHelper.verticalSpace(
                                                    getProportionateScreenHeight(
                                                        10),
                                                  ),
                                                  // _buildController(
                                                  //     model.amountController,
                                                  //     'Кол-во'),
                                                  _buildContainer(
                                                    'Кол-во',
                                                    model.revisionModel[index]
                                                        .actualAmount!
                                                        .toString(),
                                                  ),
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
                                                  // _buildController(
                                                  //     model.nameController,
                                                  //     'Наименование'),
                                                  _buildContainer(
                                                    'Наименование',
                                                    model.revisionModel[index]
                                                        .name!,
                                                  ),
                                                  UIHelper.verticalSpace(
                                                    getProportionateScreenHeight(
                                                        10),
                                                  ),
                                                  // _buildController(
                                                  //     model.balanceController,
                                                  //     'Остаток'),
                                                  _buildContainer(
                                                    'Оcтаток',
                                                    model.revisionModel[index]
                                                        .amount!
                                                        .toString(),
                                                  ),
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
                                              child:
                                                  // _buildController(
                                                  //     model.costPriceController,
                                                  //     'Себестоим.'),
                                                  _buildContainer(
                                                'Себестоим.',
                                                model.revisionModel[index]
                                                    .purchasePrice!
                                                    .toString(),
                                              ),
                                            ),
                                            Expanded(
                                              child:
                                                  // _buildController(
                                                  //     model.sellingPriceController,
                                                  //     'Цена продажи'),
                                                  _buildContainer(
                                                'Цена продажи',
                                                model.revisionModel[index]
                                                    .sellingPrice!
                                                    .toString(),
                                              ),
                                            ),
                                            Expanded(
                                              child:
                                                  // _buildController(
                                                  //     model.totalPriceController,
                                                  //     'Итого'),
                                                  _buildContainer(
                                                'Итого',
                                                model
                                                    .revisionModel[index].total!
                                                    .toString(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  UIHelper.verticalSpace(
                                    getProportionateScreenHeight(5),
                                  ),
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
                            );
                          },
                        ),
                        UIHelper.verticalSpace(
                          getProportionateScreenHeight(20),
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

  Padding _buildContainer(String title, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(13),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultText(
            // text: 'Номер наклодной',
            text: title,
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
                color: AppColors.defaultBackgroundColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(8),
                  vertical: getProportionateScreenHeight(7),
                ),
                child: Text(
                  // provider.waybillCreateModel!
                  //     .documentNumber!,
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.systemBlackColor,
                    fontSize: getProportionateScreenHeight(10),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
