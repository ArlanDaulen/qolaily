import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/revision/ui/create_revision.dart';

import '../../../shared/size_config.dart';

class RevisionProvider extends BaseBloc {
  TextEditingController searchController = TextEditingController();

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }

  toCreateRevision(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CreateRevision()));
  }
}
