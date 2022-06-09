import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/revision/provider/revision_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/loading_view.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';
import 'package:qolaily/shared/ui_helper.dart';

class RevisionPage extends StatelessWidget {
  const RevisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<RevisionProvider>(
      model: RevisionProvider(),
      onReady: (p0) => p0.init(context),
      builder: (context, model, child) {
        return model.isLoading
            ? const LoadingView()
            : Scaffold(
                body: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenHeight(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: model.searchController,
                          cursorColor: AppColors.systemBlackColor,

                          // onFieldSubmitted: (value) async =>
                          //     await model.searchDoctorByName(),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: AppColors.systemBlackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: getProportionateScreenHeight(14),
                            ),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: getProportionateScreenWidth(10),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.greyColor,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.greyColor,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            hintText: "Поиск",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: getProportionateScreenHeight(14),
                              ),
                            ),
                            suffixIcon: const Icon(
                              CupertinoIcons.search,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        GestureDetector(
                          onTap: () {
                            model.toCreateRevision(context);
                          },
                          child: Container(
                            width: 250,
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(10),
                              vertical: getProportionateScreenHeight(12),
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppSvgImages.plus),
                                UIHelper.horizontalSpace(10),
                                DefaultText(
                                  text: 'Создать ревизию',
                                  color: AppColors.whiteColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: 4,
                          separatorBuilder: (_, index) => const SizedBox(
                            height: 15,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(10),
                              ),
                              decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(12),
                                      // vertical: getProportionateScreenHeight(9),
                                    ),
                                    child: Row(
                                      children: [
                                        DefaultText(text: 'Номер:  '),
                                        DefaultText(text: '123456')
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
                                      vertical: getProportionateScreenHeight(9),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              DefaultText(text: 'Получатель'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              containerField('Ж. Багдат'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              DefaultText(text: 'Дата/Время'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              containerField(
                                                  '"15.04.2022, 12:34"'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width:
                                              getProportionateScreenWidth(20),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              DefaultText(text: 'Общая сумма'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              containerField('350'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              DefaultText(text: 'Статус'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              containerField('Черновик'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // UIHelper.verticalSpace(
                                  //   getProportionateScreenHeight(5),
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // IconButton(
                                      //   onPressed: () {
                                      //     // model.toEditProduct(context);
                                      //   },
                                      //   icon: SvgPicture.asset(
                                      //     AppSvgImages.edit,
                                      //     width: 25,
                                      //     height: 25,
                                      //   ),
                                      // ),
                                      // UIHelper.horizontalSpace(15),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          AppSvgImages.delete,
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      UIHelper.horizontalSpace(6),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  containerField(String text) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.greyColor),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(7),
          vertical: getProportionateScreenHeight(5),
        ),
        child: DefaultText(
          text: text,
          fontSize: 12,
          isCenter: false,
        ),
      ),
    );
  }
}
