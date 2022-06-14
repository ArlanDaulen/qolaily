class StatisticsModel {
  int? totalSellingSum;
  int? totalSellingCount;
  int? allProductsPurchasePrice;
  int? allProductsSellingPrice;
  int? profit;
  int? loss;

  StatisticsModel(
      {this.totalSellingSum,
      this.totalSellingCount,
      this.allProductsPurchasePrice,
      this.allProductsSellingPrice,
      this.profit,
      this.loss});

  StatisticsModel.fromJson(Map<String, dynamic> json) {
    totalSellingSum = json['TotalSellingSum'];
    totalSellingCount = json['TotalSellingCount'];
    allProductsPurchasePrice = json['AllProductsPurchasePrice'];
    allProductsSellingPrice = json['AllProductsSellingPrice'];
    profit = json['Profit'];
    loss = json['Loss'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TotalSellingSum'] = this.totalSellingSum;
    data['TotalSellingCount'] = this.totalSellingCount;
    data['AllProductsPurchasePrice'] = this.allProductsPurchasePrice;
    data['AllProductsSellingPrice'] = this.allProductsSellingPrice;
    data['Profit'] = this.profit;
    data['Loss'] = this.loss;
    return data;
  }
}
