import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
              top: BorderSide(
            color: Colors.white,
            width: 1,
          ))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
        child: GNav(
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBorderRadius: 3,
            tabBackgroundColor: const Color.fromRGBO(33, 33, 33, 1.0),
            padding: const EdgeInsets.all(12),
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: CupertinoIcons.house,
                text: 'Home',
                textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                ),
              ),
              GButton(
                icon: CupertinoIcons.heart,
                text: 'Favorites',
                textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                ),
              ),
              GButton(
                icon: CupertinoIcons.bag,
                text: 'Cart',
                textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                ),
              ),
              GButton(
                icon: CupertinoIcons.person,
                text: 'Profile',
                textStyle: GoogleFonts.montserrat(
                  color: Colors.white,
                ),
              )
            ]),
      ),
    );
  }
}
