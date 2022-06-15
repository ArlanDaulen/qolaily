import 'package:qolaily/core/network/interfaces/base_network_model.dart';

class RevisionProductsModel extends BaseNetworkModel<RevisionProductsModel> {
  String? barcode;
  String? name;
  int? actualAmount;
  int? amount;
  int? inventoryId;
  int? purchasePrice;
  int? sellingPrice;
  int? total;
  String? createdOn;

  RevisionProductsModel(
      {this.barcode,
      this.name,
      this.actualAmount,
      this.amount,
      this.inventoryId,
      this.purchasePrice,
      this.sellingPrice,
      this.total,
      this.createdOn});

  RevisionProductsModel.fromJson(Map<String, dynamic> json) {
    barcode = json['barcode'];
    name = json['name'];
    actualAmount = json['actual_amount'];
    amount = json['amount'];
    inventoryId = json['inventory_id'];
    purchasePrice = json['purchase_price'];
    sellingPrice = json['selling_price'];
    total = json['total'];
    createdOn = json['created_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['barcode'] = this.barcode;
    data['name'] = this.name;
    data['actual_amount'] = this.actualAmount;
    data['amount'] = this.amount;
    data['inventory_id'] = this.inventoryId;
    data['purchase_price'] = this.purchasePrice;
    data['selling_price'] = this.sellingPrice;
    data['total'] = this.total;
    data['created_on'] = this.createdOn;
    return data;
  }

  @override
  RevisionProductsModel fromJson(Map<String, dynamic> json) {
    return RevisionProductsModel.fromJson(json);
  }
}
