import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/catalog/ui/add_product.dart';
import 'package:qolaily/pages/catalog/ui/edit_product.dart';

import '../../../shared/size_config.dart';

class CatalogProvider extends BaseBloc {
  TextEditingController cashController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  bool isCash = true;
  Size? size;

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    setLoading(false);
  }

  setCash() {
    isCash = !isCash;
    notifyListeners();
  }

  toAddProduct(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AddProduct()));
  }

  toEditProduct(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const EditProduct()));
  }
}
