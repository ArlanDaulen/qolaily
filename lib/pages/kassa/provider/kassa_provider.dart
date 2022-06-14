import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:qolaily/app/client/kassa.dart';
import 'package:qolaily/app/data/models/item_model.dart';
import 'package:qolaily/app/data/models/shopping_cart_products_model.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';
import 'package:qolaily/shared/size_config.dart';

class KassaProvider extends BaseBloc {
  int count = 1;
  int? crementer;
  TextEditingController nameController = TextEditingController();
  TextEditingController cashController = TextEditingController();
  bool isCash = true;
  bool isSearched = false;

  int? shoppingCartId;
  ItemModel? items;
  Items? selectedItem;
  num? itemPrice;
  ShoppingCartProductsModel? products;
  int? totalSum;
  int? oddMoney;

  KassaService _service = KassaService();

  IndexProvider? _provider;

  init(BuildContext context, IndexProvider provider) async {
    setLoading(true);
    SizeConfig().init(context);
    // nameController.text = 'Чудо творожок';
    _provider = provider;
    await createShoppingCart();
    await getShoppingCartProducts();
    setLoading(false);
  }

  createShoppingCart() async {
    final response = await _service.createShoppingCart();
    shoppingCartId = response;
    log(shoppingCartId.toString());
    notifyListeners();
  }

  getShoppingCartProducts() async {
    final response = await _service.getShoppingCartProducts(shoppingCartId!);
    products = response;
    await getShoppingCartTotalSum();
    notifyListeners();
  }

  getShoppingCartTotalSum() async {
    final response = await _service.getShoppingCartTotalSum(shoppingCartId!);
    totalSum = response;
    notifyListeners();
  }

  searchItem() async {
    final response = await _service.searchItems(nameController.text);
    items = response;
    setSearched(true);
    notifyListeners();
  }

  selectItem(Items item) {
    nameController.text = item.name!;
    itemPrice = item.purchasePrice!;
    crementer = item.purchasePrice!.toInt();
    selectedItem = item;
    setSearched(false);
    notifyListeners();
  }

  increaseCount() {
    count++;
    itemPrice = itemPrice! + crementer!;
    notifyListeners();
  }

  decreaseCount() {
    if (count >= 1) {
      // itemPrice = itemPrice! - (itemPrice! ~/ count);
      itemPrice = itemPrice! - crementer!;
      count--;
    }
    notifyListeners();
  }

  addProduct(Items item) async {
    await _service.addProduct(
      item.barcode!,
      item.name!,
      count,
      shoppingCartId!,
      item.purchasePrice!,
      item.sellingPrice!,
      itemPrice!,
    );
    setLoading(true);
    await getShoppingCartProducts();
    setLoading(false);
    count = 1;
    itemPrice = null;
    nameController.clear();
    notifyListeners();
  }

  deleteProduct(String barcode) async {
    await _service.deleteProduct(shoppingCartId!, barcode);
    await getShoppingCartProducts();
  }

  calculateOddMoney() {
    oddMoney = int.parse(cashController.text) - totalSum!.toInt();
    if (oddMoney! < 0) {
      oddMoney = 0;
    }
    notifyListeners();
  }

  setCash(bool value) {
    isCash = value;
    notifyListeners();
  }

  setSearched(bool value) {
    isSearched = value;
    notifyListeners();
  }

  updateShoopingCart() async {
    final statusCode = await _service.updateShoppingCart(shoppingCartId!);
    if (statusCode == 200) {
      _provider!.setNavIndex(0);
      notifyListeners();
    }
  }
}
