class ShoppingCartProductsModel {
  List<ShoppingCartItems>? shoppingCartItems;

  ShoppingCartProductsModel({this.shoppingCartItems});

  ShoppingCartProductsModel.fromJson(Map<String, dynamic> json) {
    if (json['shoppingCartItems'] != null) {
      shoppingCartItems = <ShoppingCartItems>[];
      json['shoppingCartItems'].forEach((v) {
        shoppingCartItems!.add(ShoppingCartItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (shoppingCartItems != null) {
      data['shoppingCartItems'] =
          shoppingCartItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ShoppingCartItems {
  String? barcode;
  String? name;
  int? amount;
  int? shoppingCartId;
  int? purchasePrice;
  int? sellingPrice;
  int? total;
  String? createdOn;

  ShoppingCartItems(
      {this.barcode,
      this.name,
      this.amount,
      this.shoppingCartId,
      this.purchasePrice,
      this.sellingPrice,
      this.total,
      this.createdOn});

  ShoppingCartItems.fromJson(Map<String, dynamic> json) {
    barcode = json['barcode'];
    name = json['name'];
    amount = json['amount'];
    shoppingCartId = json['shopping_cart_id'];
    purchasePrice = json['purchase_price'];
    sellingPrice = json['selling_price'];
    total = json['total'];
    createdOn = json['created_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['barcode'] = barcode;
    data['name'] = name;
    data['amount'] = amount;
    data['shopping_cart_id'] = shoppingCartId;
    data['purchase_price'] = purchasePrice;
    data['selling_price'] = sellingPrice;
    data['total'] = total;
    data['created_on'] = createdOn;
    return data;
  }
}
