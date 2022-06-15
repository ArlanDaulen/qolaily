import 'package:flutter/material.dart';
import 'package:qolaily/app/client/revision.dart';
import 'package:qolaily/app/data/models/revision_response_model.dart';
import 'package:qolaily/app/main/user_data.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/revision/ui/create_revision.dart';
import 'package:qolaily/pages/revision/ui/list_of_revision_products.dart';

import '../../../shared/size_config.dart';

class RevisionProvider extends BaseBloc {
  TextEditingController searchController = TextEditingController();

  RevisionResponseModel? revisionResponseModel;

  RevisionService _service = RevisionService();
  final UserData _userData = UserData();

  init(BuildContext context) async {
    setLoading(true);
    SizeConfig().init(context);
    await getAllRevision();
    setLoading(false);
  }

  Future<void> getAllRevision() async {
    final response = await _service.getAllRevision();
    revisionResponseModel = response;
    notifyListeners();
  }

  deleteRevision(int index, context) async {
    setLoading(true);
    await _service.deleteRevision((await _userData.getMerchantId()),
        revisionResponseModel!.data![index].id!);
    await getAllRevision();
    // await _service
    //     .deleteRevision((await _userData.getMerchantId()).toString(),
    //         revisionResponseModel!.data![index].id!)
    //     .then((_) => init(context));
    setLoading(false);
    notifyListeners();
  }

  toCreateRevision(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateRevision(
          provider: this,
        ),
      ),
    );
  }

  toRevisionProductsPage(context, int index) {
    // int? id = waybillModel[index].id;
    // _userData.setWaybillId(id);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ListOfRevisionProducts(
                id: revisionResponseModel!.data![index].id!)));
  }
}
