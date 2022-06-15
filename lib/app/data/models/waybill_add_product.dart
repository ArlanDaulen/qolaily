import 'package:qolaily/core/network/interfaces/base_network_model.dart';

class AddProductToWaybillModel
    extends BaseNetworkModel<AddProductToWaybillModel> {
  String? barcode;
  String? name;
  int? receivedAmount;
  int? amount;
  int? waybillId;
  int? purchasePrice;
  int? sellingPrice;
  int? total;
  String? createdOn;

  AddProductToWaybillModel(
      {this.barcode,
      this.name,
      this.receivedAmount,
      this.amount,
      this.waybillId,
      this.purchasePrice,
      this.sellingPrice,
      this.total,
      this.createdOn});

  AddProductToWaybillModel.fromJson(Map<String, dynamic> json) {
    barcode = json['barcode'];
    name = json['name'];
    receivedAmount = json['received_amount'];
    amount = json['amount'];
    waybillId = json['waybill_id'];
    purchasePrice = json['purchase_price'];
    sellingPrice = json['selling_price'];
    total = json['total'];
    createdOn = json['created_on'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['barcode'] = this.barcode;
    data['name'] = this.name;
    data['received_amount'] = this.receivedAmount;
    data['amount'] = this.amount;
    data['waybill_id'] = this.waybillId;
    data['purchase_price'] = this.purchasePrice;
    data['selling_price'] = this.sellingPrice;
    data['total'] = this.total;
    data['created_on'] = this.createdOn;
    return data;
  }

  @override
  AddProductToWaybillModel fromJson(Map<String, dynamic> json) {
    return AddProductToWaybillModel.fromJson(json);
  }
}
