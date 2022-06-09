import 'package:flutter/cupertino.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class KassaProvider extends BaseBloc {
  int count = 1;
  int price = 250;
  List<Product> products = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController cashController = TextEditingController();
  bool isCash = true;

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    nameController.text = 'Чудо творожок';
    setLoading(false);
  }

  increaseCount() {
    count++;
    price = 250 * count;
    notifyListeners();
  }

  decreaseCount() {
    if (count != 1) {
      price = price - (price ~/ count);
      count--;
    } else {
      price = 250;
    }
    notifyListeners();
  }

  addProduct() {
    products.add(
      Product(
        name: nameController.text,
        count: count,
        price: price,
      ),
    );
    count = 1;
    price = 250;
    notifyListeners();
  }

  deleteProduct(int index) {
    products.removeAt(index);
    notifyListeners();
  }

  setCash(bool value) {
    isCash = value;
    notifyListeners();
  }
}

class Product {
  String name;
  int count;
  int price;

  Product({required this.name, required this.count, required this.price});
}
