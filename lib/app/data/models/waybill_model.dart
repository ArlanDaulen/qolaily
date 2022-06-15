// import 'package:qolaily/core/network/interfaces/base_network_model.dart';

// class WaybillModel extends BaseNetworkModel<WaybillModel> {
//   List<Data>? data;

//   WaybillModel({this.data});

//   WaybillModel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }

//   @override
//   WaybillModel fromJson(Map<String, dynamic> json) {
//     return WaybillModel.fromJson(json);
//   }
// }

// class Data {
//   int? id;
//   String? documentNumber;
//   String? merchantId;
//   int? stockId;
//   int? totalSum;
//   String? createdOn;
//   String? updatedOn;
//   String? providedTime;
//   String? employee;
//   String? status;

//   Data(
//       {this.id,
//       this.documentNumber,
//       this.merchantId,
//       this.stockId,
//       this.totalSum,
//       this.createdOn,
//       this.updatedOn,
//       this.providedTime,
//       this.employee,
//       this.status});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     documentNumber = json['document_number'];
//     merchantId = json['merchant_id'];
//     stockId = json['stock_id'];
//     totalSum = json['total_sum'];
//     createdOn = json['created_on'];
//     updatedOn = json['updated_on'];
//     providedTime = json['provided_time'];
//     employee = json['employee'];
//     status = json['status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['document_number'] = this.documentNumber;
//     data['merchant_id'] = this.merchantId;
//     data['stock_id'] = this.stockId;
//     data['total_sum'] = this.totalSum;
//     data['created_on'] = this.createdOn;
//     data['updated_on'] = this.updatedOn;
//     data['provided_time'] = this.providedTime;
//     data['employee'] = this.employee;
//     data['status'] = this.status;
//     return data;
//   }
// }

import 'package:qolaily/core/network/interfaces/base_network_model.dart';

class WaybillModel extends BaseNetworkModel<WaybillModel> {
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

  WaybillModel(
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

  WaybillModel.fromJson(Map<String, dynamic> json) {
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
  WaybillModel fromJson(Map<String, dynamic> json) {
    return WaybillModel.fromJson(json);
  }
}
