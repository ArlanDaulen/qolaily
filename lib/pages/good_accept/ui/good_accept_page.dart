import 'package:flutter/material.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/good_accept/provider/good_accept_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';

class GoodsAcceptPage extends StatelessWidget {
  const GoodsAcceptPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<GoodsAcceptProvider>(
      onReady: (p0) => p0.init(context),
      model: GoodsAcceptProvider(),
      builder: (context, model, child) {
        return Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(24),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: getProportionateScreenHeight(30),
                  left: getProportionateScreenWidth(24),
                  right: getProportionateScreenWidth(24),
                ),
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(13),
                        vertical: getProportionateScreenHeight(8),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: DefaultText(
                          text: 'ТОВАР',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(4),
                    ),
                    const Divider(
                      color: AppColors.greyColor,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(4),
                    ),
                    _buildController(model.barcodeController, 'Штрих-код'),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    _buildController(model.nameController, 'Наименование'),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    _buildController(
                        model.costPriceController, 'Себестоимость'),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    _buildController(model.markupController, 'Наценка'),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    _buildController(
                        model.sellingPriceController, 'Цена продажи'),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    _buildController(model.categoryController, 'Категория'),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    _buildController(model.quantityController, 'Количество'),
                    SizedBox(
                      height: getProportionateScreenHeight(40),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: getProportionateScreenWidth(170),
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
                            text: 'ДОБАВИТЬ',
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(28),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Expanded _buildController(
    TextEditingController controller,
    String name,
  ) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(13),
        ),
        child: Column(
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
            Flexible(
              child: TextField(
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
      ),
    );
  }
}
