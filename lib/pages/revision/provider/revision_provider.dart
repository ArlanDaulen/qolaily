import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';

import '../../../shared/size_config.dart';

class RevisionProvider extends BaseBloc {
  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }
}