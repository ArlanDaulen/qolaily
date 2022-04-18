import 'package:flutter/cupertino.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/shared/size_config.dart';

class SignUpProvider extends BaseBloc {
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController companyBINController = TextEditingController();

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    setLoading(false);
  }
}
