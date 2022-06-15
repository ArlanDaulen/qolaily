import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/client/catalog.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/catalog/provider/catalog_provider.dart';
import 'package:qolaily/shared/size_config.dart';

import '../../../shared/default_text.dart';
import '../../../shared/theme.dart';

class EditProductProvider extends BaseBloc {
  TextEditingController barcodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController costPriceController = TextEditingController();
  TextEditingController markupController = TextEditingController();
  TextEditingController sellingPriceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  CatalogProvider? catalogProvider;
  CatalogService _service = CatalogService();

  init(BuildContext context, CatalogProvider _pr) {
    setLoading(true);
    SizeConfig().init(context);
    catalogProvider = _pr;
    setLoading(false);
  }

  update(int id, int categoryId, String categoryName, int stockId, BuildContext context) async {
    log("Id: " + id.toString());
    log("categoryID: " + categoryId.toString());
    log("stockId: " + stockId.toString());
  
    final response = await _service.update(
        id,
        barcodeController.text,
        nameController.text,
        categoryId.toString(),
        stockId.toString(),
        costPriceController.text,
        sellingPriceController.text,
        quantityController.text,
        categoryName);

    if (response == 200) {
      await catalogProvider!.getAllProducts();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: DefaultText(
            text: 'Product successfully updated',
            color: AppColors.whiteColor,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: DefaultText(
            text: 'Fail to update product',
            color: AppColors.whiteColor,
          ),
        ),
      );
    }
  }
}
