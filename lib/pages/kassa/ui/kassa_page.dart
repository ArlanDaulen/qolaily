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
    return BaseProvider<KassaProvider>(
      onReady: (p0) => p0.init(context),
      model: KassaProvider(),
      builder: (context, model, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(8),
                ),
                alignment: Alignment.centerLeft,
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
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: DefaultText(
                            text: 'Наименование',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: DefaultText(
                            text: 'ЦЕНА',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(20),
                              ),
                              color: Colors.grey,
                              alignment: Alignment.centerLeft,
                              child: DefaultText(
                                text: 'Чудо творожок',
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(20),
                              ),
                              color: Colors.grey,
                              alignment: Alignment.centerRight,
                              child: DefaultText(
                                text: '480.00',
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: DefaultText(
                            text: 'Наименование',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                        Expanded(
                          child: DefaultText(
                            text: 'Кол-во',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
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
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: DefaultText(
                            text: 'Сок Мое, 200мл',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                        Expanded(
                          child: DefaultText(
                            text: '1',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                        Expanded(
                          child: DefaultText(
                            text: '250',
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 10,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(8),
                      bottom: getProportionateScreenHeight(18),
                    ),
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
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(5),
                            ),
                            child: DefaultText(
                              text: 'ОБЩАЯ СУММА:',
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                              right: getProportionateScreenWidth(20),
                            ),
                            color: Colors.grey,
                            alignment: Alignment.centerRight,
                            child: DefaultText(
                              text: '660.00',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(5),
                            ),
                            child: DefaultText(
                              text: 'Способ оплаты:',
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: GestureDetector(
                                  onTap: () => model.setCash(),
                                  child: Container(
                                    width: constraints.maxWidth * 0.25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: model.isCash
                                            ? AppColors.greenColor
                                            : AppColors.greyColor,
                                      ),
                                      color:
                                          AppColors.primaryColor.withOpacity(0),
                                    ),
                                    child: DefaultText(
                                      text: 'Наличными',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Expanded(
                                flex: 5,
                                child: GestureDetector(
                                  onTap: () => model.setCash(),
                                  child: Container(
                                    width: constraints.maxWidth * 0.25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: model.isCash
                                            ? AppColors.greyColor
                                            : AppColors.greenColor,
                                      ),
                                      color:
                                          AppColors.primaryColor.withOpacity(0),
                                    ),
                                    child: DefaultText(
                                      text: 'Картой',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(5),
                            ),
                            child: DefaultText(
                              text: 'НАЛИЧНЫЕ',
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Flexible(
                          flex: 3,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(5),
                              ),
                              child: SizedBox(
                                width: constraints.maxHeight * 0.25,
                                child: TextField(
                                  controller: model.cashController,
                                  cursorColor: AppColors.systemBlackColor,
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      color: AppColors.systemBlackColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.systemBlackColor),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.systemBlackColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(5),
                            ),
                            child: DefaultText(
                              text: 'СДАЧА',
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Flexible(
                          flex: 3,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(5),
                              ),
                              child: Container(
                                width: constraints.maxWidth * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: AppColors.systemBlackColor,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                  right: getProportionateScreenWidth(4),
                                ),
                                child: DefaultText(
                                  text: '340',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: constraints.maxWidth * 0.25,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: AppColors.greyColor,
                            ),
                            child: DefaultText(
                              text: 'ЧЕК',
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        );
      },
    );
  }
}
