import 'package:flutter/material.dart';

import '../../view/cart_page/cart_page.dart';
import '../../view/home_page/home_view.dart';
import '../../view/profile_page/profile_page.dart';
import 'bottom_nav_bar.dart';

class BottomNavWrapper extends StatefulWidget {
  const BottomNavWrapper({Key? key}) : super(key: key);

  @override
  State<BottomNavWrapper> createState() => _BottomNavWrapperState();
}

class _BottomNavWrapperState extends State<BottomNavWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    HomeView(),
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
