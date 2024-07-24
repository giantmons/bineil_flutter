// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api
import 'package:appdev_proj/pages/login_page.dart';
import 'package:appdev_proj/pages/order_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/perfume.dart';
import '../components/perfume_favorites.dart';
import 'perfume_details_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: ListView(
        children: [
          const SizedBox(height: 30.0),
          Center(
            child: Text(
              'PROFILE SETTING',
              style: GoogleFonts.montserrat(
                  fontSize: 16, color: colorScheme.secondary),
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.secondary,
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
              style: GoogleFonts.montserrat(
                  color: colorScheme.secondary, fontSize: 16),
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
                          Icon(CupertinoIcons.cube_box,
                              size: 30, color: colorScheme.secondary),
                          const SizedBox(height: 8),
                          Text('Orders',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: colorScheme.secondary)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyWishlistPage()));
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
                          Icon(CupertinoIcons.heart,
                              size: 30, color: colorScheme.secondary),
                          const SizedBox(height: 8),
                          Text('Wishlist',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: colorScheme.secondary)),
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
                color: colorScheme.secondary,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
            child: Container(
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
                      leading: Icon(
                        CupertinoIcons.person,
                        color: colorScheme.secondary,
                        size: 30,
                      ),
                      title: Text(
                        '   Jhoanna Christine Robles',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: colorScheme.secondary),
                      ),
                      trailing: Icon(
                        CupertinoIcons.chevron_right,
                        color: colorScheme.secondary,
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
                      leading: Icon(
                        CupertinoIcons.mail,
                        color: colorScheme.secondary,
                        size: 30,
                      ),
                      title: Text(
                        '   jhoannarob143@gmail.com',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: colorScheme.secondary),
                      ),
                      trailing: Icon(
                        CupertinoIcons.chevron_right,
                        color: colorScheme.secondary,
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
                      leading: Icon(
                        CupertinoIcons.phone,
                        color: colorScheme.secondary,
                        size: 30,
                      ),
                      title: Text(
                        '   (63+) 123 456 7890',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: colorScheme.secondary),
                      ),
                      trailing: Icon(
                        CupertinoIcons.chevron_right,
                        color: colorScheme.secondary,
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
                      leading: Icon(
                        CupertinoIcons.chat_bubble,
                        color: colorScheme.secondary,
                        size: 30,
                      ),
                      title: Text(
                        '   Feedback',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: colorScheme.secondary),
                      ),
                      trailing: Icon(
                        CupertinoIcons.chevron_right,
                        color: colorScheme.secondary,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
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
                color: colorScheme.secondary,
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
                        leading: Icon(
                          CupertinoIcons.bell,
                          color: colorScheme.secondary,
                          size: 30,
                        ),
                        title: Text(
                          '   Push Notifications',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: colorScheme.secondary),
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
                        leading: Icon(
                          CupertinoIcons.device_phone_portrait,
                          color: colorScheme.secondary,
                          size: 30,
                        ),
                        title: Text(
                          '   SMS Notifications',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: colorScheme.secondary),
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BeneilLoginForm()));
              },
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
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: colorScheme.secondary),
                  ),
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
              textAlign: TextAlign.center,
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.secondary,
        centerTitle: true,
        title: Text(
          'MY ORDERS',
          style: GoogleFonts.montserrat(
              fontSize: 16, color: colorScheme.secondary),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderDetailsPage()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: colorScheme.secondary),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child:
                            Image.asset('images/libre.png', fit: BoxFit.cover),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Libre Le Parfum',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: colorScheme.secondary,
                              ),
                            ),
                            Text(
                              'Yves Saint Laurent',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Order ID: 12312321421',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: colorScheme.secondary,
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
          )
        ],
      ),
    );
  }
}

class MyWishlistPage extends StatelessWidget {
  MyWishlistPage({super.key});

  final List<Perfume> perfumeList = [
    Perfume(
        name: 'Good Girl Blush',
        brand: 'Carolina Herrera',
        price: 'PHP 7,000.00',
        imagePath: 'images/good.png',
        description:
            'A fresh and floral fragrance with a hint of citrus, balanced by a creamy vanilla base. Ideal for the charming and confident woman who loves to make a statement.',
        size: '50ml',
        rating: '4.3',
        review:
            'Good Girl Blush is a charming and confident fragrance with a fresh floral and vanilla blend. It’s great for making a statement but may not last as long as expected.',
        category: 'Female'),
    Perfume(
        name: 'J\'adore L\'Or',
        brand: 'Dior',
        price: 'PHP 15,000.00',
        imagePath: 'images/jadore.png',
        description:
            'A luxurious and opulent fragrance with rich floral notes and a warm, sensual base. Perfect for the elegant and sophisticated woman who loves to indulge.',
        size: '50ml',
        rating: '4.8',
        review:
            'J\'adore L\'Or is a luxurious scent with rich floral and warm notes. It’s ideal for indulgence and sophistication but comes with a high price tag.',
        category: 'Female'),
    Perfume(
        name: 'Her Elixir de Parfum',
        brand: 'Burberry',
        price: 'PHP 7,000.00',
        imagePath: 'images/her.png',
        description:
            'A fruity and floral fragrance with a gourmand twist, featuring sweet berry notes and a creamy base. Ideal for the modern woman who loves to embrace her sweet side.',
        size: '50ml',
        rating: '4.4',
        review:
            'Her Elixir de Parfum is a sweet and fruity fragrance with a creamy base. It’s perfect for those who love a gourmand twist but might be too sweet for some.',
        category: 'Female'),
    Perfume(
        name: 'Gris Charnel Extrait',
        brand: 'BDK Parfums',
        price: 'PHP 13,000.00',
        imagePath: 'images/gris.png',
        description:
            'A rich and sophisticated fragrance with a blend of spicy, woody, and creamy notes. Perfect for those who appreciate depth and complexity in their scent.',
        size: '100ml',
        rating: '4.6',
        review:
            'Gris Charnel Extrait offers a rich and sophisticated scent with a complex blend of spices and wood. It’s ideal for those who appreciate depth, though its price is quite high.',
        category: 'Male'),
    Perfume(
        name: 'Tobacco Honey',
        brand: 'Guerlain',
        price: 'PHP 15,000.00',
        imagePath: 'images/tobacco.png',
        description:
            'A warm and sweet fragrance that combines the richness of honey and tobacco with floral and musky undertones. Ideal for a cozy and intimate setting.',
        size: '100ml',
        rating: '4.8',
        review:
            'Tobacco Honey is a warm and inviting fragrance with a sweet and musky blend. It’s perfect for cozy settings but comes with a premium price.',
        category: 'Unisex'),
  ];

  void navigateToPerfumeDetails(BuildContext context, index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PerfumeDetailsPage(
                perfume: perfumeList[index],
              )),
    );
  }

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritePerfumesPage(
          perfumes: perfumeList.sublist(1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.secondary,
        centerTitle: true,
        title: Text(
          'MY WISHLIST',
          style: GoogleFonts.montserrat(
              fontSize: 16, color: colorScheme.secondary),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: perfumeList.length,
              itemBuilder: (context, index) {
                return FavoritesTile(
                  perfume: perfumeList[index],
                  onTap: () => navigateToPerfumeDetails(context, index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritePerfumesPage extends StatelessWidget {
  final List<Perfume> perfumes;

  const FavoritePerfumesPage({super.key, required this.perfumes});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemCount: perfumes.length,
        itemBuilder: (context, index) => FavoritesTile(
          perfume: perfumes[index],
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PerfumeDetailsPage(
                perfume: perfumes[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
