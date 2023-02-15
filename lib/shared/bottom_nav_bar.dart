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
      animationCurve: Curves.easeInOutCubic,
      backgroundColor: Colors.indigoAccent.shade200,
      selectedIndex: selectedIndex,
      showElevation: true,
      onItemSelected: onItemSelected,
      items: [
        FlashyTabBarItem(
          activeColor: Colors.white,
          inactiveColor: const Color(0xff999999),
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            height: 20,
          ),
          title: Text("Home",
              style: style.bodyMedium?.copyWith(color: Colors.white)),
        ),
        FlashyTabBarItem(
          activeColor: Colors.white,
          inactiveColor: Colors.grey,
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            height: 20,
          ),
          title: Text("Cart",
              style: style.bodyMedium?.copyWith(color: Colors.white)),
        ),
        FlashyTabBarItem(
          activeColor: Colors.white,
          inactiveColor: Colors.grey,
          icon: SvgPicture.asset(
            'assets/icons/user.svg',
            height: 20,
          ),
          title: Text("Profile",
              style: style.bodyMedium?.copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
