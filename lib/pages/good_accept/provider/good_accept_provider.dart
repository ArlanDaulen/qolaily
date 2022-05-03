import 'package:flutter/material.dart';
import 'package:qolaily/base/base_bloc.dart';
import 'package:qolaily/pages/good_accept/ui/create_product_accept.dart';

import '../../../shared/size_config.dart';

class GoodsAcceptProvider extends BaseBloc {
  TextEditingController searchController = TextEditingController();
  Size? size;

  init(BuildContext context) {
    setLoading(true);
    SizeConfig().init(context);
    size = MediaQuery.of(context).size;
    setLoading(false);
  }

  toCreateProductAccept(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CreateProductAccept()));
  }
}
