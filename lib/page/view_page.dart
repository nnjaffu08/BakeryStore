import 'package:bakery_shop/screens/favorite_screen.dart';
import 'package:bakery_shop/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:bakery_shop/page/home_page.dart';
import 'package:bakery_shop/page/CartPage.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions() => <Widget>[
        HomePage(),
        Cartpage(onBackPress: () {
          setState(() {
            _selectedIndex = 0; // Quay về tab Home
          });
        }),
        FavoriteScreen(),
        ProfileScreen(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA9E3D7), // Đặt màu nền của view
      body: _widgetOptions().elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFFA9E3D7),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Color(0xFFE5E5E5),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: const Color.fromARGB(255, 151, 240, 152),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: const Color(0xFFD89F68),
              color: Colors.white, // Đặt màu icon là màu trắng
              tabs: const [
                GButton(icon: LineIcons.home, text: "Home"),
                GButton(icon: LineIcons.shoppingBag, text: "Cart"),
                GButton(icon: LineIcons.heart, text: "Favorites"),
                GButton(icon: LineIcons.user, text: "Profile"),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
