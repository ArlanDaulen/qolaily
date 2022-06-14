class RevisionResponseModel {
  List<Data>? data;

  RevisionResponseModel({this.data});

  RevisionResponseModel.fromJson(Map<String, dynamic> json) {
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
  String? documentNumber;
  String? merchantId;
  int? totalSum;
  String? createdOn;
  String? updatedOn;
  String? providedTime;
  String? employee;
  String? status;

  Data(
      {this.id,
      this.documentNumber,
      this.merchantId,
      this.totalSum,
      this.createdOn,
      this.updatedOn,
      this.providedTime,
      this.employee,
      this.status});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    documentNumber = json['document_number'];
    merchantId = json['merchant_id'];
    totalSum = json['total_sum'];
    createdOn = json['created_on'];
    updatedOn = json['updated_on'];
    providedTime = json['provided_time'];
    employee = json['employee'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['document_number'] = documentNumber;
    data['merchant_id'] = merchantId;
    data['total_sum'] = totalSum;
    data['created_on'] = createdOn;
    data['updated_on'] = updatedOn;
    data['provided_time'] = providedTime;
    data['employee'] = employee;
    data['status'] = status;
    return data;
  }
}
