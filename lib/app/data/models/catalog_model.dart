class CatalogModel {
  List<Products>? products;

  CatalogModel({this.products});

  CatalogModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  num? id;
  String? barcode;
  String? name;
  String? categoryName;
  num? categoryId;
  String? merchantId;
  num? stockId;
  num? purchasePrice;
  num? sellingPrice;
  num? amount;
  num? margin;
  String? unitType;

  Products(
      {this.id,
      this.barcode,
      this.name,
      this.categoryName,
      this.categoryId,
      this.merchantId,
      this.stockId,
      this.purchasePrice,
      this.sellingPrice,
      this.amount,
      this.margin,
      this.unitType});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    barcode = json['barcode'];
    name = json['name'];
    categoryName = json['category_name'];
    categoryId = json['category_id'];
    merchantId = json['merchant_id'];
    stockId = json['stock_id'];
    purchasePrice = json['purchase_price'];
    sellingPrice = json['selling_price'];
    amount = json['amount'];
    margin = json['margin'];
    unitType = json['unit_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['barcode'] = barcode;
    data['name'] = name;
    data['category_name'] = categoryName;
    data['category_id'] = categoryId;
    data['merchant_id'] = merchantId;
    data['stock_id'] = stockId;
    data['purchase_price'] = purchasePrice;
    data['selling_price'] = sellingPrice;
    data['amount'] = amount;
    data['margin'] = margin;
    data['unit_type'] = unitType;
    return data;
  }
}
