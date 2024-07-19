import 'package:flutter/material.dart';
import '../components/perfume_favorites.dart';
import 'perfume_details_page.dart';
import '../models/perfume.dart';
import 'package:google_fonts/google_fonts.dart';

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
    ),
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
    ),
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
    ),
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
    ),
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
    ),
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'MY WISHLIST',
          style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
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
    return Scaffold(
      backgroundColor: Colors.black,
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
