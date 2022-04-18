import 'package:flutter/material.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/kassa/provider/kassa_provider.dart';

class KassaPage extends StatelessWidget {
  const KassaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<KassaProvider>(
      onReady: (p0) => p0.init(context),
      model: KassaProvider(),
      builder: (context, model, child) {
        return Text('KASSA');
      },
    );
  }
}
