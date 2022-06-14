import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';
import 'package:qolaily/pages/kassa/provider/kassa_provider.dart';
import 'package:qolaily/shared/loading_view.dart';

import '../../../shared/default_text.dart';
import '../../../shared/size_config.dart';
import '../../../shared/theme.dart';

class KassaPage extends StatelessWidget {
  const KassaPage({Key? key, required this.indexProvider}) : super(key: key);
  final IndexProvider indexProvider;

  @override
  Widget build(BuildContext context) {
    Color greyColor = const Color(0xffD6D6D6);
    return BaseProvider<KassaProvider>(
      onReady: (p0) => p0.init(context, indexProvider),
      model: KassaProvider(),
      builder: (context, model, child) {
        return model.isLoading
            ? const LoadingView()
            : Container(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                ),
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(24),
                  right: getProportionateScreenWidth(24),
                  left: getProportionateScreenWidth(24),
                ),
                // alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      offset: const Offset(0, 4),
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: DefaultText(
                            text: 'Наименование',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Expanded(
                          child: DefaultText(
                            text: 'Кол-во',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Expanded(
                          child: DefaultText(
                            text: 'ЦЕНА',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(
                          model.isSearched ? 140 : 80),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(80),
                                  padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20),
                                  ),
                                  color: greyColor,
                                  alignment: Alignment.centerLeft,
                                  child: TextField(
                                    controller: model.nameController,
                                    cursorColor: AppColors.systemBlackColor,
                                    // maxLines: 2,
                                    onSubmitted: (value) => model.searchItem(),
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        color: AppColors.systemBlackColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                      ),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            getProportionateScreenHeight(7),
                                      ),
                                      isDense: true,
                                    ),
                                  ),
                                ),
                                model.isSearched
                                    ? Expanded(
                                        child: ListView.separated(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: model.items!.items!.length,
                                          separatorBuilder: (context, index) =>
                                              const Divider(
                                            color: Colors.grey,
                                          ),
                                          itemBuilder: (context, index) {
                                            log(model.items!.items![index].name
                                                    .toString() +
                                                ' ' +
                                                model.items!.items![index]
                                                    .purchasePrice
                                                    .toString());
                                            return GestureDetector(
                                              onTap: () => model.selectItem(
                                                model.items!.items![index],
                                              ),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                width: double.maxFinite,
                                                decoration: const BoxDecoration(
                                                  color: AppColors.whiteColor,
                                                ),
                                                child: DefaultText(
                                                  text: model.items!
                                                      .items![index].name!,
                                                  fontSize: 8,
                                                  color: AppColors
                                                      .systemBlackColor,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            child: Container(
                                color: greyColor,
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Expanded(
                                      flex: 4,
                                      child: GestureDetector(
                                        onTap: () => model.decreaseCount(),
                                        child: Container(
                                          width:
                                              getProportionateScreenWidth(30),
                                          height:
                                              getProportionateScreenHeight(30),
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(
                                            right:
                                                getProportionateScreenWidth(10),
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffA8ABB2)
                                                .withOpacity(0.64),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Icon(
                                            CupertinoIcons.minus,
                                            color: AppColors.systemBlackColor,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: DefaultText(
                                        text: model.count.toString(),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: GestureDetector(
                                        onTap: () => model.increaseCount(),
                                        child: Container(
                                          width:
                                              getProportionateScreenWidth(30),
                                          height:
                                              getProportionateScreenHeight(30),
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(
                                            left:
                                                getProportionateScreenWidth(10),
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffA8ABB2)
                                                .withOpacity(0.64),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Icon(
                                            CupertinoIcons.add,
                                            color: AppColors.systemBlackColor,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(20),
                              ),
                              color: greyColor,
                              alignment: Alignment.centerRight,
                              child: DefaultText(
                                text: "${model.itemPrice ?? ''}",
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => model.addProduct(model.selectedItem!),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10),
                            horizontal: getProportionateScreenWidth(10),
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DefaultText(
                            text: 'Добавить',
                            fontSize: 10,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 1,
                      color: greyColor,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: DefaultText(
                            text: 'Наименование',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: getProportionateScreenHeight(25),
                          color: greyColor,
                        ),
                        Expanded(
                          child: DefaultText(
                            text: 'Кол-во',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: getProportionateScreenHeight(25),
                          color: greyColor,
                        ),
                        Expanded(
                          child: DefaultText(
                            text: 'Стоимость',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 1,
                      color: greyColor,
                    ),
                    Flexible(
                      child: ListView.separated(
                        shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: model.products!.shoppingCartItems == null
                            ? 0
                            : model.products!.shoppingCartItems!.length,
                        separatorBuilder: (_, index) => Container(
                          width: double.maxFinite,
                          height: 1,
                          color: greyColor,
                        ),
                        itemBuilder: (_, index) => Row(
                          children: [
                            Expanded(
                              child: DefaultText(
                                text: model
                                    .products!.shoppingCartItems![index].name!,
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: getProportionateScreenHeight(25),
                              color: greyColor,
                            ),
                            Expanded(
                              child: DefaultText(
                                text: model
                                    .products!.shoppingCartItems![index].amount!
                                    .toString(),
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                              ),
                            ),
                            Container(
                              width: 1,
                              height: getProportionateScreenHeight(25),
                              color: greyColor,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  const Spacer(
                                    flex: 4,
                                  ),
                                  DefaultText(
                                    text: model
                                        .products!
                                        .shoppingCartItems![index]
                                        .purchasePrice!
                                        .toString(),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                  ),
                                  const Spacer(
                                    flex: 4,
                                  ),
                                  GestureDetector(
                                    onTap: () => model.deleteProduct(
                                        model.items!.items![index].barcode!),
                                    child: const Icon(
                                      CupertinoIcons.trash_fill,
                                      color: Colors.grey,
                                      size: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(9),
                        vertical: getProportionateScreenHeight(18),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                    vertical: getProportionateScreenHeight(10),
                                    horizontal: getProportionateScreenWidth(10),
                                  ),
                                  decoration: BoxDecoration(
                                    color: greyColor,
                                  ),
                                  child: Row(
                                    children: [
                                      DefaultText(
                                        text: 'ОБЩАЯ СУММА:',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      const Spacer(),
                                      DefaultText(
                                        text: "${model.totalSum ?? ''}",
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(10)),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: DefaultText(
                                    text: 'Способ оплаты:',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => model.setCash(true),
                                  child: Container(
                                    width: getProportionateScreenWidth(88),
                                    padding: EdgeInsets.symmetric(
                                      vertical: getProportionateScreenHeight(8),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: model.isCash
                                            ? AppColors.greenColor
                                            : greyColor,
                                        width: model.isCash ? 2 : 1,
                                      ),
                                    ),
                                    child: DefaultText(
                                      text: 'Наличными',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(8),
                                ),
                                GestureDetector(
                                  onTap: () => model.setCash(false),
                                  child: Container(
                                    width: getProportionateScreenWidth(88),
                                    padding: EdgeInsets.symmetric(
                                      vertical: getProportionateScreenHeight(8),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: model.isCash
                                            ? greyColor
                                            : AppColors.greenColor,
                                        width: model.isCash ? 1 : 2,
                                      ),
                                    ),
                                    child: DefaultText(
                                      text: 'Картой',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultText(
                                  text: 'НАЛИЧНЫЕ',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(8),
                                ),
                                Container(
                                  // width: getProportionateScreenWidth(80),
                                  padding: EdgeInsets.symmetric(
                                    // vertical: getProportionateScreenHeight(6),
                                    horizontal: getProportionateScreenWidth(5),
                                  ),
                                  alignment: Alignment.topRight,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.systemBlackColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: TextField(
                                    textAlign: TextAlign.right,
                                    controller: model.cashController,
                                    keyboardType: TextInputType.number,
                                    onChanged: (_) => model.calculateOddMoney(),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      isDense: true,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(8)),
                                DefaultText(
                                  text: 'СДАЧА',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(8),
                                ),
                                Container(
                                  // width: getProportionateScreenWidth(80),
                                  padding: EdgeInsets.symmetric(
                                    vertical: getProportionateScreenHeight(10),
                                    horizontal: getProportionateScreenWidth(5),
                                  ),
                                  alignment: Alignment.topRight,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.systemBlackColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: DefaultText(
                                    text: "${model.oddMoney ?? 0}",
                                    // fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(8),
                                ),
                                GestureDetector(
                                  onTap: () => model.updateShoopingCart(),
                                  child: Container(
                                    // width: getProportionateScreenWidth(80),
                                    padding: EdgeInsets.symmetric(
                                      vertical:
                                          getProportionateScreenHeight(10),
                                      horizontal:
                                          getProportionateScreenWidth(5),
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff696D79),
                                      boxShadow: [
                                        BoxShadow(
                                          color: greyColor,
                                          offset: const Offset(2, 4),
                                          blurRadius: 1,
                                        ),
                                      ],
                                    ),
                                    child: DefaultText(
                                      text: 'ЧЕК',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
