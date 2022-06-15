import 'package:flutter/material.dart';
import 'package:qolaily/app/client/catalog.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/catalog/provider/catalog_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';

class AddProductProvider extends BaseBloc {
  TextEditingController barcodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController costPriceController = TextEditingController();
  TextEditingController markupController = TextEditingController();
  TextEditingController sellingPriceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  CatalogProvider? catalogProvider;
  CatalogService _service = CatalogService();

  init(BuildContext context, CatalogProvider _catalogProvider) {
    setLoading(true);
    SizeConfig().init(context);
    catalogProvider = _catalogProvider;
    setLoading(false);
  }

  addProducts(BuildContext context) async {
    final response = await _service.createProduct(
        barcodeController.text,
        nameController.text,
        costPriceController.text,
        sellingPriceController.text,
        quantityController.text,
        categoryController.text);
    if (response == 200) {
      await catalogProvider!.getAllProducts();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: DefaultText(
            text: 'Successfully created',
            color: AppColors.whiteColor,
          ),
        ),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: DefaultText(
            text: 'Fail to create product',
            color: AppColors.whiteColor,
          ),
        ),
      );
    }
  }
}
