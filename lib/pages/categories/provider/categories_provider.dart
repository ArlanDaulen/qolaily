import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/client/category.dart';
import 'package:qolaily/app/data/models/category_create_response_model.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/theme.dart';

import '../../../shared/size_config.dart';

class CategoriesProvider extends BaseBloc {
  TextEditingController nameController = TextEditingController();
  TextEditingController characteristicController = TextEditingController();
  Size? size;

  CategoryService _service = CategoryService();

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    setLoading(false);
  }

  Future<void> createCatergory(BuildContext context) async {
    CategoryResponseModel categoryModel = await _service.createCategory(
      nameController.text,
      characteristicController.text,
    );
    Navigator.pop(context);
    log({categoryModel.id ?? 'No id'}.toString());
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primaryColor,
        content: DefaultText(
          text: categoryModel.categoryName == null
              ? 'Something went wrong'
              : 'Category successfully created',
          color: AppColors.whiteColor,
        ),
      ),
    );
  }

  Future<void> updateCategory(BuildContext context) async {
    CategoryResponseModel categoryModel = await _service.updateCategory(
      nameController.text,
      characteristicController.text,
      14,
    );
    Navigator.pop(context);
    log({categoryModel.id ?? 'No ID'}.toString());
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primaryColor,
        content: DefaultText(
          text: categoryModel.categoryName == null
              ? 'Something went wrong'
              : 'Category successfully updated',
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
