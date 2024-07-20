import 'package:flutter/material.dart';
import 'perfume_details_page.dart';
import '../models/perfume.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<Perfume> perfumeList = [
Perfume(
  name: 'Chanel No. 5',
  brand: 'Chanel',
  price: '120.00 USD',
  imagePath: 'images/chanel5.png',
  description: 'A classic fragrance with a blend of floral and woody notes.',
  size: '50ml',
  rating: '4.8',
  review: 'Timeless and elegant, perfect for any occasion. Chanel No. 5 embodies sophistication with its complex blend of rose, jasmine, and sandalwood. It’s a signature scent that has been cherished for decades, making it a staple in any fragrance collection.',
),
Perfume(
  name: 'J’adore',
  brand: 'Dior',
  price: '130.00 USD',
  imagePath: 'images/jadore.png',
  description: 'A luxurious floral fragrance with notes of jasmine and ylang-ylang.',
  size: '50ml',
  rating: '4.7',
  review: 'Sophisticated and feminine, a favorite for many. J’adore is a radiant and opulent scent that combines the elegance of jasmine and ylang-ylang with a subtle hint of musk.',
),
Perfume(
  name: 'La Vie Est Belle',
  brand: 'Lancôme',
  price: '110.00 USD',
  imagePath: 'images/lavie.png',
  description: 'A sweet, floral scent with hints of iris and praline.',
  size: '50ml',
  rating: '4.6',
  review: 'Sweet and enchanting, perfect for a warm day. La Vie Est Belle is a delightful blend of iris, praline, and vanilla that creates a warm and inviting aroma.',
),
Perfume(
  name: 'Black Opium',
  brand: 'Yves Saint Laurent',
  price: '140.00 USD',
  imagePath: 'images/black.png',
  description: 'A bold, sensual fragrance with notes of coffee and vanilla.',
  size: '50ml',
  rating: '4.5',
  review: 'Intense and captivating, ideal for evening wear. Black Opium offers a daring and seductive scent with its rich blend of coffee, vanilla, and floral notes. ',
),
Perfume(
  name: 'Flowerbomb',
  brand: 'Viktor & Rolf',
  price: '150.00 USD',
  imagePath: 'images/flowerbomb.png',
  description: 'A floral explosion with notes of jasmine, orange blossom, and patchouli.',
  size: '50ml',
  rating: '4.7',
  review: 'Bold and enchanting, a real statement scent. Flowerbomb is an explosive floral fragrance that captivates with its intense blend of jasmine, orange blossom, and patchouli.',
),
Perfume(
  name: 'Si',
  brand: 'Giorgio Armani',
  price: '125.00 USD',
  imagePath: 'images/si.png',
  description: 'A sophisticated blend of blackcurrant, rose, and vanilla.',
  size: '50ml',
  rating: '4.6',
  review: 'Elegant and modern, a versatile fragrance. Si combines the sweetness of blackcurrant with the richness of rose and vanilla, creating a refined and elegant scent.',
),
Perfume(
  name: 'Coco Mademoiselle',
  brand: 'Chanel',
  price: '130.00 USD',
  imagePath: 'images/coco.png',
  description: 'A fresh, oriental fragrance with notes of orange and patchouli.',
  size: '50ml',
  rating: '4.8',
  review: 'Chic and sophisticated, a signature scent. Coco Mademoiselle offers a fresh and vibrant take on oriental fragrances, with its lively blend of orange and patchouli.',
),
Perfume(
  name: 'Miss Dior',
  brand: 'Dior',
  price: '115.00 USD',
  imagePath: 'images/missdior.png',
  description: 'A floral fragrance with notes of rose, peony, and musk.',
  size: '50ml',
  rating: '4.5',
  review: 'Elegant and youthful, perfect for daily wear. Miss Dior is a charming floral fragrance that combines rose and peony with a hint of musk. ',
),
Perfume(
  name: 'Aventus',
  brand: 'Creed',
  price: 'PHP 18,000.00',
  imagePath: 'images/aventus.png',
  description:
      'A legendary fragrance known for its fresh, fruity, and smoky profile, embodying strength and sophistication with its unique blend of pineapple, birch, and musk.',
  size: '100ml',
  rating: '4.9',
  review: 'Aventus lives up to its reputation with a perfectly balanced blend of fruity and smoky notes.'
),
Perfume(
  name: 'Bleu de Chanel',
  brand: 'Chanel',
  price: '135.00 USD',
  imagePath: 'images/bdc.png',
  description: 'A woody aromatic fragrance with notes of citrus, ginger, and sandalwood.',
  size: '50ml',
  rating: '4.7',
  review: 'Fresh and sophisticated, ideal for any occasion. Bleu de Chanel is a versatile fragrance that blends citrus, ginger, and sandalwood to create a fresh and sophisticated aroma.',
  ),
];

  void navigateToPerfumeDetails(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PerfumeDetailsPage(perfume: perfumeList[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'POPULAR PRODUCTS', style: GoogleFonts.montserrat(
                  fontSize: 16, color: Colors.white
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: perfumeList.length,
              itemBuilder: (context, index) {
                final perfume = perfumeList[index];
                bool isFirstItem = index == 0;
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      navigateToPerfumeDetails(context, index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: isFirstItem
                            ?
                            // Bigger container for the first item
                            Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 200,
                                      color: Colors.grey.shade300,
                                      child: Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: Image.asset(perfume.imagePath,
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    perfume.name,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    perfume.brand,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '#${index + 1}',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            :
                            // Standard container for other items
                            ListTile(
                                leading: Image.asset(perfume.imagePath,
                                    width: 80, height: 80),
                                title: Text(
                                  perfume.name,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  perfume.brand,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                trailing: Text(
                                  '#${index + 1}', // Adjust index for trailing number
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class FavoritesTile extends StatelessWidget {
  final Perfume perfume;
  final VoidCallback onTap;

  const FavoritesTile({super.key, required this.perfume, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Image.asset(perfume.imagePath, width: 100, height: 100),
            Text(
              perfume.name,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Text(
              perfume.brand,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
