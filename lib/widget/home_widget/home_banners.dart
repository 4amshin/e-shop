import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../model/banner.dart';
import 'hero_banner_card.dart';

class HomeBanners extends StatelessWidget {
  const HomeBanners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 220,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
            ),
            items: NewBanner.newBanners
                .map(
                  (newBanner) => HeroBannerCard(newBanner: newBanner),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
