import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:qolaily/app/data/models/item_model.dart';
import 'package:qolaily/app/data/models/shopping_cart_products_model.dart';
import 'package:qolaily/app/main/user_data.dart';

class KassaService {
  final client = http.Client();
  UserData _userData = UserData();
  String baseUrl = 'http://34.216.151.246/v1/';

  Future<int?> createShoppingCart() async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.post(
      Uri.parse(
        baseUrl + 'shopping_cart/create',
      ),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"merchant_id": merchantId}),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body)['id'];
    } else {
      return null;
    }
  }

  Future<ItemModel> searchItems(String name) async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.post(
      Uri.parse(
        baseUrl + 'product/filter',
      ),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "merchant_id": merchantId,
        "name": name,
        "barcode": "",
        "from": 0,
        "size": 0
      }),
    );
    log('Search status: ' + response.statusCode.toString());
    if (response.statusCode == 200) {
      final model = ItemModel.fromJson({'items': json.decode(response.body)});
      return model;
    } else {
      return ItemModel();
    }
  }

  Future addProduct(
    String barcode,
    String name,
    num amount,
    num shoppingCartId,
    num purchasePrice,
    num sellingPrice,
    num total,
  ) async {
    final response = await client.post(
      Uri.parse(baseUrl + 'shopping_cart/add/product'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "barcode": barcode,
        "name": name,
        "amount": amount,
        "shopping_cart_id": shoppingCartId,
        "purchase_price": purchasePrice,
        "selling_price": sellingPrice,
        "total": total
      }),
    );
    log('Add Producy status: ' + response.statusCode.toString());
  }

  Future<ShoppingCartProductsModel> getShoppingCartProducts(
      int shoppingCartId) async {
    final response = await client.post(
      Uri.parse(
        baseUrl + 'shopping_cart/products/get',
      ),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"shopping_cart_id": shoppingCartId}),
    );
    log('Get Shopping Cart Products: ' + response.statusCode.toString());
    if (response.statusCode == 200) {
      final model = ShoppingCartProductsModel.fromJson(
        {"shoppingCartItems": json.decode(response.body)},
      );
      return model;
    } else {
      return ShoppingCartProductsModel();
    }
  }

  Future<int?> getShoppingCartTotalSum(int shoppingCartId) async {
    final response = await client.get(
      Uri.parse(
        baseUrl + 'shopping_cart/$shoppingCartId',
      ),
    );
    log('Get Shopping Cart Total Sum: ' + response.statusCode.toString());
    if (response.statusCode == 200) {
      return json.decode(response.body)['total_sum'];
    } else {
      return null;
    }
  }

  Future deleteProduct(int shoppingCartId, String barcode) async {
    final response = await client.delete(
      Uri.parse(
        baseUrl + 'shopping_cart/products/$shoppingCartId/$barcode',
      ),
    );

    log(response.statusCode.toString());
  }

  Future<int> updateShoppingCart(int shoppingCartId) async {
    final merchantId = await _userData.getMerchantId();
    final response = await client.put(
      Uri.parse(
        baseUrl + 'shopping_cart/$shoppingCartId',
      ),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"status": "provided", "merchant_id": merchantId}),
    );
    log(response.statusCode.toString());
    return response.statusCode;
  }
}
