import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'profile_page.dart';
import 'entry_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    if (index == 2) {
      _navigateToCartPage();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _navigateToCartPage() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CartPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    ).then((value) {

      setState(() {
        _selectedIndex =
            0; 
      });
    });
  }

  final List<Widget> _pages = [
    EntryPage(),
    const CategoryPage(),
    Container(), 
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: _selectedIndex != 2
          ? MyBottomNavBar(
              onTabChange: (index) => navigateBottomBar(index),
            )
          : null,
      body: _pages[_selectedIndex],
    );
  }
}
