import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/kassa/provider/kassa_provider.dart';

import '../../../shared/default_text.dart';
import '../../../shared/size_config.dart';
import '../../../shared/theme.dart';

class KassaPage extends StatelessWidget {
  const KassaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color greyColor = const Color(0xffD6D6D6);
    return BaseProvider<KassaProvider>(
      onReady: (p0) => p0.init(context),
      model: KassaProvider(),
      builder: (context, model, child) {
        return Container(
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
                height: getProportionateScreenHeight(80),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(20),
                        ),
                        color: greyColor,
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller: model.nameController,
                          cursorColor: AppColors.systemBlackColor,
                          maxLines: 2,
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
                              vertical: getProportionateScreenHeight(7),
                            ),
                            isDense: true,
                          ),
                        ),
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
                                    width: getProportionateScreenWidth(30),
                                    height: getProportionateScreenHeight(30),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                      right: getProportionateScreenWidth(10),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffA8ABB2)
                                          .withOpacity(0.64),
                                      borderRadius: BorderRadius.circular(5),
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
                                    width: getProportionateScreenWidth(30),
                                    height: getProportionateScreenHeight(30),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffA8ABB2)
                                          .withOpacity(0.64),
                                      borderRadius: BorderRadius.circular(5),
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
                          text: '250.00',
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
                  onTap: () => model.addProduct(),
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
                  itemCount: model.products.length,
                  separatorBuilder: (_, index) => Container(
                    width: double.maxFinite,
                    height: 1,
                    color: greyColor,
                  ),
                  itemBuilder: (_, index) => Row(
                    children: [
                      Expanded(
                        child: DefaultText(
                          text: model.products[index].name,
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
                          text: model.products[index].count.toString(),
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
                              text: model.products[index].price.toString(),
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                            const Spacer(
                              flex: 4,
                            ),
                            GestureDetector(
                              onTap: () => model.deleteProduct(index),
                              child: const Icon(
                                CupertinoIcons.trash_fill,
                                color: Colors.grey,
                                size: 14,
                              ),
                            ),
                            Spacer(),
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
                                Spacer(),
                                DefaultText(
                                  text: '660.00',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
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
                    Spacer(),
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(8)),
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
                              text: '340',
                              // fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
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
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xff696D79),
                              boxShadow: [
                                BoxShadow(
                                  color: greyColor,
                                  offset: Offset(2, 4),
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
