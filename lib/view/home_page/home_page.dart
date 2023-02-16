import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/widget/home_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../model/banner.dart';
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
          children: const [
            HomeBanners(),
          ],
        ),
      ),
    );
  }
}
