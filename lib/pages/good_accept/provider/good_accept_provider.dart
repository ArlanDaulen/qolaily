import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qolaily/app/data/models/waybill_create_model.dart';
import 'package:qolaily/app/data/models/waybill_model.dart';
import 'package:qolaily/app/data/services/waybill_service.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/core/freezed/network_error.dart';
import 'package:qolaily/core/freezed/result.dart';
import 'package:qolaily/pages/good_accept/ui/create_product_accept.dart';

import '../../../shared/size_config.dart';

class GoodsAcceptProvider extends BaseBloc {
  TextEditingController searchController = TextEditingController();
  Size? size;
  final WaybillService _waybillService = WaybillService();
  List<WaybillModel> waybillModel = [];
  WaybillCreateModel? waybillCreateModel;
  final UserData _userData = UserData();

  init(BuildContext context) async {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    await filterWaybill();
    notifyListeners();
    setLoading(false);
  }

  filterWaybill() async {
    Result<List<WaybillModel>, NetworkError> waybillResponse =
        await _waybillService.filterWaybill();

    waybillResponse.when(success: (response) {
      waybillModel = response;
      log("Success filterWaybill (provider)");
    }, failure: (error) {
      log("Error filter waybill (provider)");
    });
  }

  createWaybill(context) async {
    Result<WaybillCreateModel, NetworkError> p =
        await _waybillService.createWaybill();

    p.when(success: (response) {
      waybillCreateModel = response;
      _userData.setWaybillId(waybillCreateModel!.id);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CreateProductAccept(provider: this)));
      log('Success in createWaybill (provider)');
      log('New Waybill ID: ${_userData.getWaybillId()}');
    }, failure: (error) {
      log('Error in createWaybill (provider). Error: $error');
    });
  }

  String getName(String? name) {
    if (name == null) {
      return 'Bagdat';
    }
    if (name.isEmpty) {
      return 'Bagdat';
    }
    return name;
  }

  toCreateProductAccept(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CreateProductAccept(provider: this)));
  }
}
