import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/catalog/provider/catalog_provider.dart';
import 'package:qolaily/shared/default_text.dart';
import 'package:qolaily/shared/size_config.dart';
import 'package:qolaily/shared/theme.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<CatalogProvider>(
      onReady: (p0) => p0.init(context),
      model: CatalogProvider(),
      builder: (context, model, child) {
        return Center(
          child: DefaultText(
            text: 'CATALOG',
          ),
        );
      },
    );
  }
}
