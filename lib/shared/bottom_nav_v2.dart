import 'package:e_commerce/view/cart_page/cart_page.dart';
import 'package:e_commerce/view/home_page/home_view.dart';
import 'package:e_commerce/view/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavV2 extends StatefulWidget {
  const BottomNavV2({Key? key}) : super(key: key);

  @override
  State<BottomNavV2> createState() => _BottomNavV2State();
}

class _BottomNavV2State extends State<BottomNavV2> {
  PersistentTabController? _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return const [
      HomeView(),
      CartPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/home.svg',
          height: 20,
          color: Colors.white,
        ),
        title: ("Home"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.withOpacity(0.5),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          height: 20,
          color: Colors.white,
        ),
        title: ("Cart"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.withOpacity(0.5),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/user.svg',
          height: 20,
          color: Colors.white,
        ),
        title: ("Profile"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.withOpacity(0.5),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.black,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style9);
  }
}
