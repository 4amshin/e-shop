import 'package:e_commerce/widget/home_widget/bottom_content.dart';
import 'package:e_commerce/widget/home_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../model/product_model.dart';
import '../../widget/home_widget/home_banners.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Zero to Unicorn',
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const HomeBanners(),
            BottomContent(
              title: 'Recommended',
              model: Product.products
                  .where((product) => product.isRecommended!)
                  .toList(),
            ),
            BottomContent(
              title: 'Most Popular',
              model: Product.products
                  .where((product) => product.isPopular!)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
