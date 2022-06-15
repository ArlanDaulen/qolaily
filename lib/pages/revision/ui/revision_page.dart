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
import 'package:intl/intl.dart';

class RevisionPage extends StatelessWidget {
  const RevisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<RevisionProvider>(
      model: RevisionProvider(),
      onReady: (p0) => p0.init(context),
      builder: (context, model, child) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenHeight(20),
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: model.searchController,
                  cursorColor: AppColors.systemBlackColor,
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
                model.isLoading
                    ? const LoadingView()
                    : Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: model.revisionResponseModel!.data!.length,
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(20)),
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
                                    ),
                                    child: Row(
                                      children: [
                                        DefaultText(text: 'Номер:  '),
                                        DefaultText(
                                          text: model
                                                  .revisionResponseModel!
                                                  .data![index]
                                                  .documentNumber ??
                                              '1212121212',
                                        ),
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
                                              DefaultText(text: 'Сотрудник'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              containerField(model
                                                          .revisionResponseModel!
                                                          .data![index]
                                                          .employee! ==
                                                      ''
                                                  ? 'Не указан'
                                                  : model.revisionResponseModel!
                                                      .data![index].employee!),
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
                                                DateFormat('dd.MM.yyyy, hh:mm')
                                                    .format(
                                                  DateTime.parse(model
                                                      .revisionResponseModel!
                                                      .data![index]
                                                      .providedTime!),
                                                ),
                                              ),
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
                                              containerField('0'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              DefaultText(text: 'Статус'),
                                              UIHelper.verticalSpace(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                              containerField(
                                                statusSort(model
                                                    .revisionResponseModel!
                                                    .data![index]
                                                    .status!),
                                              ),
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          model.deleteRevision(index, context);
                                        },
                                        icon: SvgPicture.asset(
                                          AppSvgImages.delete,
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
                      ),
              ],
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

  String statusSort(String status) {
    switch (status) {
      case 'provided':
        return 'Предоставлен';
      case 'draft':
        return 'Черновик';
      default:
        return '';
    }
  }
}
