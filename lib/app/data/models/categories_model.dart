class CategoriesModel {
  List<Data>? data;

  CategoriesModel({this.data});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? merchantId;
  int? productsCount;
  String? categoryName;
  String? description;
  String? createdOn;
  String? updatedOn;

  Data(
      {this.id,
      this.merchantId,
      this.productsCount,
      this.categoryName,
      this.description,
      this.createdOn,
      this.updatedOn});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    merchantId = json['merchant_id'];
    productsCount = json['products_count'];
    categoryName = json['category_name'];
    description = json['Description'];
    createdOn = json['CreatedOn'];
    updatedOn = json['UpdatedOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['merchant_id'] = merchantId;
    data['products_count'] = productsCount;
    data['category_name'] = categoryName;
    data['Description'] = description;
    data['CreatedOn'] = createdOn;
    data['UpdatedOn'] = updatedOn;
    return data;
  }
}
