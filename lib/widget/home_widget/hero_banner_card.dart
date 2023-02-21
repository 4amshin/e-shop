import 'package:e_commerce/model/banner_model.dart';
import 'package:e_commerce/view/catalog_page/catalog_view.dart';
import 'package:flutter/material.dart';

class HeroBannerCard extends StatelessWidget {
  final NewBanner newBanner;
  const HeroBannerCard({
    Key? key,
    required this.newBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CatalogView(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(
          left: 5,
          right: 5,
          bottom: 25,
          top: 10,
        ),
        // padding: const EdgeInsets.only(top: 150),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/${newBanner.imgAsset}'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              offset: const Offset(2, 5),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              end: Alignment.center,
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black54,
                Colors.transparent,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              newBanner.name ?? 'text here',
              style: style.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
