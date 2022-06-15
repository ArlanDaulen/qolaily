import 'package:flutter/material.dart';
import 'package:qolaily/app/client/catalog.dart';
import 'package:qolaily/app/data/models/catalog_model.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/catalog/ui/add_product.dart';
import 'package:qolaily/pages/catalog/ui/edit_product.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/theme.dart';

import '../../../shared/size_config.dart';

class CatalogProvider extends BaseBloc {
  TextEditingController cashController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  bool isCash = true;
  Size? size;

  CatalogService _service = CatalogService();
  CatalogModel? catalogModel;

  init(BuildContext context) async {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    await getAllProducts();
    setLoading(false);
  }

  getAllProducts() async {
    final response = await _service.getAllProducts();
    catalogModel = response;
    notifyListeners();
  }

  deleteProduct(int id, BuildContext context) async {
    final response = await _service.deleteProduct(id);
    if (response == 200) {
      await getAllProducts();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: DefaultText(
            text: 'Product successfully deleted',
            color: AppColors.whiteColor,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: DefaultText(
            text: 'Fail to delete product',
            color: AppColors.whiteColor,
          ),
        ),
      );
    }
  }

  setCash() {
    isCash = !isCash;
    notifyListeners();
  }

  toAddProduct(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AddProduct(
                  catalogProvider: this,
                )));
  }

  toEditProduct(int id, int categoryId, int stockId, context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EditProduct(
                  catalogProvider: this,
                  id: id,
                  categoryId: categoryId,
                  stockId: stockId,
                )));
  }
}
