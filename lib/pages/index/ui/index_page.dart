import 'package:flutter/material.dart';
import 'package:qolaily/base/base_provider.dart';
import 'package:qolaily/pages/index/provider/index_provider.dart';

import '../../../shared/default_text.dart';
import '../../../shared/size_config.dart';
import '../../../shared/theme.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<IndexProvider>(
      onReady: (p0) => p0.init(context),
      model: IndexProvider(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              getProportionateScreenHeight(130),
            ),
            child: Container(
              color: AppColors.primaryColor,
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        text: 'Qolaily',
                        color: AppColors.whiteColor,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                      DefaultText(
                        text: 'online-kassa',
                        color: AppColors.whiteColor,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      DefaultText(
                        text: 'Главная',
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
