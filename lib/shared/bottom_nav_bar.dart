// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemSelected;
  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return FlashyTabBar(
      backgroundColor: Colors.black,
      selectedIndex: selectedIndex,
      showElevation: true,
      onItemSelected: onItemSelected,
      items: [
        FlashyTabBarItem(
          activeColor: Colors.white,
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            height: 20,
            color: Colors.white,
          ),
          title: Text("Home",
              style: style.bodyMedium?.copyWith(color: Colors.white)),
        ),
        FlashyTabBarItem(
          activeColor: Colors.white,
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            height: 20,
            color: Colors.white,
          ),
          title: Text("Cart",
              style: style.bodyMedium?.copyWith(color: Colors.white)),
        ),
        FlashyTabBarItem(
          activeColor: Colors.white,
          icon: SvgPicture.asset(
            'assets/icons/user.svg',
            height: 20,
            color: Colors.white,
          ),
          title: Text("Profile",
              style: style.bodyMedium?.copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
