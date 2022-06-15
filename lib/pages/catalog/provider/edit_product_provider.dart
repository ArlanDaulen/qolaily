import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/client/catalog.dart';
import 'package:qolaily/app/data/models/catalog_model.dart';
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

  init(BuildContext context, CatalogProvider _pr, Products product) {
    setLoading(true);
    SizeConfig().init(context);
    catalogProvider = _pr;
    barcodeController.text = product.barcode!;
    nameController.text = product.name!;
    costPriceController.text = product.purchasePrice!.toString();
    sellingPriceController.text = product.purchasePrice!.toString();
    categoryController.text = product.categoryName!.toString();
    quantityController.text = product.amount!.toString();
    setLoading(false);
  }

  update(Products product, BuildContext context) async {
    final response = await _service.update(
        product.id!.toInt(),
        barcodeController.text,
        nameController.text,
        product.categoryId.toString(),
        product.stockId.toString(),
        costPriceController.text,
        sellingPriceController.text,
        quantityController.text,
        product.categoryName!);

    if (response == 200) {
      await catalogProvider!.getAllProducts();
      Navigator.pop(context);
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
