import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/widget/home_widget/bottom_content.dart';
import 'package:e_commerce/widget/home_widget/custom_app_bar.dart';
import 'package:e_commerce/widget/home_widget/section_title.dart';
import 'package:flutter/material.dart';

import '../../model/banner.dart';
import '../../model/product_model.dart';
import '../../widget/home_widget/hero_banner_card.dart';
import '../../widget/home_widget/home_banners.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              title: 'Popular',
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
