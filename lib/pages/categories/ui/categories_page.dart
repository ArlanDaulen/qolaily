import 'package:flutter/material.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/categories/provider/categories_provider.dart';
import 'package:qolaily/shared/default_button.dart';
import 'package:qolaily/shared/loading_view.dart';

import '../../../shared/default_text.dart';
import '../../../shared/size_config.dart';
import '../../../shared/theme.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<CategoriesProvider>(
      onReady: (p0) => p0.init(context),
      model: CategoriesProvider(),
      builder: (context, model, child) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(24),
            ),
            child: model.isLoading
                ? const LoadingView()
                : Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(24),
                      ),
                      InkWell(
                        onTap: () {
                          showAlertDialog(
                            context,
                            model.nameController,
                            model.characteristicController,
                            model,
                            0,
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: getProportionateScreenWidth(200),
                          padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(12),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.greyColor,
                                offset: Offset(0, 2),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.control_point,
                                color: AppColors.whiteColor,
                                size: 15,
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              DefaultText(
                                text: 'Создать категорию',
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(17),
                      ),
                      Container(
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(50),
                              color: AppColors.greyColor,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: DefaultText(text: 'КАТЕГОРИИ'),
                                  ),
                                  Expanded(
                                    child: DefaultText(text: 'КОЛ-ВО ТОВАРОВ'),
                                  ),
                                ],
                              ),
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: model.categoriesModel!.data!.length,
                              separatorBuilder: (_, index) => const Divider(
                                color: AppColors.greyColor,
                              ),
                              itemBuilder: (_, index) => SizedBox(
                                height: getProportionateScreenHeight(40),
                                child: InkWell(
                                  onTap: () {
                                    showAlertDialog(
                                      context,
                                      model.nameController,
                                      model.characteristicController,
                                      model,
                                      index,
                                      isCreate: false,
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: DefaultText(
                                          text: model.categoriesModel!
                                              .data![index].categoryName!,
                                        ),
                                      ),
                                      Expanded(
                                        child: DefaultText(
                                          text: model.categoriesModel!
                                              .data![index].productsCount!
                                              .toString(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      // Container(
                      //   padding: EdgeInsets.only(
                      //     bottom: getProportionateScreenHeight(36),
                      //   ),
                      //   width: double.maxFinite,
                      //   decoration: const BoxDecoration(
                      //     color: AppColors.whiteColor,
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Container(
                      //         alignment: Alignment.center,
                      //         height: getProportionateScreenHeight(50),
                      //         color: AppColors.greyColor,
                      //         width: double.maxFinite,
                      //         child: DefaultText(
                      //           text: 'РЕДАКТИРОВАТЬ',
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: getProportionateScreenHeight(25),
                      //       ),
                      //       _buildController('Наименование', model.nameController),
                      //       SizedBox(
                      //         height: getProportionateScreenHeight(20),
                      //       ),
                      //       _buildController(
                      //           'Характеристика', model.characteristicController),
                      //       SizedBox(
                      //         height: getProportionateScreenHeight(20),
                      //       ),
                      //       Container(
                      //         width: getProportionateScreenWidth(170),
                      //         height: getProportionateScreenHeight(40),
                      //         decoration: BoxDecoration(
                      //           color: const Color(0xff929292),
                      //           borderRadius: BorderRadius.circular(8),
                      //         ),
                      //         alignment: Alignment.center,
                      //         child: DefaultText(
                      //           text: 'Редактировать',
                      //           color: AppColors.whiteColor,
                      //           fontSize: 12,
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: getProportionateScreenHeight(40),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
          ),
        );
      },
    );
  }

  _buildController(String name, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(14),
          ),
          child: DefaultText(text: name),
        ),
        SizedBox(
          height: getProportionateScreenHeight(5),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(14),
          ),
          child: SizedBox(
            height: getProportionateScreenHeight(35),
            child: TextField(
              controller: controller,
              cursorColor: AppColors.systemBlackColor,
              style: TextStyle(
                color: AppColors.systemBlackColor,
                fontSize: getProportionateScreenHeight(14),
                fontWeight: FontWeight.w400,
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
        ),
      ],
    );
  }

  showAlertDialog(context, TextEditingController nController,
      TextEditingController chController, CategoriesProvider model, int index,
      {isCreate = true}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(0),
          content: Container(
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(50),
                  color: AppColors.greyColor,
                  width: double.maxFinite,
                  child: DefaultText(
                    text: isCreate ? 'Создать' : 'Редактировать',
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                _buildController('Наименование', nController),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                _buildController('Характеристика', chController),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                DefaultButton(
                  press: () => isCreate
                      ? model.createCatergory(context)
                      : model.updateCategory(
                          context,
                          model.categoriesModel!.data![index].id!,
                        ),
                  text: 'Применить',
                  color: AppColors.primaryColor,
                  width: model.size!.width * 0.4,
                  height: getProportionateScreenHeight(26),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
