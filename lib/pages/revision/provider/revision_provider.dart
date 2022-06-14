import 'package:flutter/material.dart';
import 'package:qolaily/app/client/revision.dart';
import 'package:qolaily/app/data/models/revision_response_model.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/revision/ui/create_revision.dart';

import '../../../shared/size_config.dart';

class RevisionProvider extends BaseBloc {
  TextEditingController searchController = TextEditingController();

  RevisionResponseModel? revisionResponseModel;

  RevisionService _service = RevisionService();

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

  toCreateRevision(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CreateRevision(),
      ),
    );
  }
}
