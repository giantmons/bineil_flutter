// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:appdev_proj/pages/order_details.dart';
import 'package:appdev_proj/pages/wishlist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const SizedBox(height: 30.0),
          Center(
            child: Text(
              'PROFILE SETTING',
              style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: ClipOval(
                child: Image.asset(
                  'images/jhoanna.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Center(
            child: Text(
              'Jhoanna Christine Robles',
              style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
            ),
          ),
          Center(
            child: Text(
              'Joined August 18, 2023',
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 14),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyCartPage()));
                    },
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade900,
                          ),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topLeft: Radius.circular(8))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.cube_box,
                              size: 30, color: Colors.white),
                          const SizedBox(height: 8),
                          Text('Orders',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: 
                      (context) => MyWishlistPage()));
                    },
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Colors.grey.shade900),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.heart,
                              size: 30, color: Colors.white),
                          const SizedBox(height: 8),
                          Text('Wishlist',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'General Information',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
            child: Container(
              height: 320,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade900,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: const Icon(
                        CupertinoIcons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        '   Jhoanna Christine Robles',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: const Icon(
                        CupertinoIcons.mail,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        '   jhoannarob143@gmail.com',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: const Icon(
                        CupertinoIcons.phone,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        '   (63+) 123 456 7890',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: const Icon(
                        CupertinoIcons.chat_bubble,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        '   Feedback',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Notification',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade900,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          '   Push Notifications',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: Colors.white),
                        ),
                        trailing: OnOffToggle()),
                  ),
                  Divider(
                    color: Colors.grey.shade900,
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: const Icon(
                          CupertinoIcons.device_phone_portrait,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          '   SMS Notifications',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: Colors.white),
                        ),
                        trailing: OnOffToggle()),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  'SIGN OUT',
                  style:
                      GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              'Version 1.00 (1185001)',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Text(
              '@2023-24 Powered by Bineil',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Text(
              'Buyer Account Terms - Bineil Go Terms - Privacy Policy',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(height: 36)
        ],
      ),
    );
  }
}

class OnOffToggle extends StatefulWidget {
  @override
  _OnOffToggleState createState() => _OnOffToggleState();
}

class _OnOffToggleState extends State<OnOffToggle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeTrackColor: Colors.orangeAccent,
      activeColor: Colors.orange,
    );
  }
}

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'MY ORDERS',
          style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 12),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: 
                (context) => const OrderDetailsPage()));
              },
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(26.0),
                      child: Image(image: AssetImage('images/libre.png')),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Libre Le Parfum',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Yves Saint Laurent',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Order ID: 12312321421',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
