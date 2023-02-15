import 'package:e_commerce/shared/bottom_nav_bar.dart';
import 'package:e_commerce/view/cart_page/cart_page.dart';
import 'package:e_commerce/view/home_page/home_page.dart';
import 'package:e_commerce/view/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

class PageNavigation extends StatefulWidget {
  const PageNavigation({Key? key}) : super(key: key);

  @override
  State<PageNavigation> createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
      ),
    );
  }
}
