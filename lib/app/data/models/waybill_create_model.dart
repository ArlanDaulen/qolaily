import 'package:qolaily/core/network/interfaces/base_network_model.dart';

class WaybillCreateModel extends BaseNetworkModel<WaybillCreateModel> {
  int? id;
  String? documentNumber;
  String? merchantId;
  int? stockId;
  int? totalSum;
  String? createdOn;
  String? updatedOn;
  String? providedTime;
  String? employee;
  String? status;

  WaybillCreateModel(
      {this.id,
      this.documentNumber,
      this.merchantId,
      this.stockId,
      this.totalSum,
      this.createdOn,
      this.updatedOn,
      this.providedTime,
      this.employee,
      this.status});

  WaybillCreateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    documentNumber = json['document_number'];
    merchantId = json['merchant_id'];
    stockId = json['stock_id'];
    totalSum = json['total_sum'];
    createdOn = json['created_on'];
    updatedOn = json['updated_on'];
    providedTime = json['provided_time'];
    employee = json['employee'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['document_number'] = this.documentNumber;
    data['merchant_id'] = this.merchantId;
    data['stock_id'] = this.stockId;
    data['total_sum'] = this.totalSum;
    data['created_on'] = this.createdOn;
    data['updated_on'] = this.updatedOn;
    data['provided_time'] = this.providedTime;
    data['employee'] = this.employee;
    data['status'] = this.status;
    return data;
  }

  @override
  WaybillCreateModel fromJson(Map<String, dynamic> json) {
    return WaybillCreateModel.fromJson(json);
  }
}
