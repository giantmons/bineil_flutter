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
  // Female perfumes
  Perfume(
    name: 'Chanel No. 5',
    brand: 'Chanel',
    price: '6,600.00 PHP',
    imagePath: 'images/chanel5.png',
    description: 'A classic fragrance with a blend of floral and woody notes.',
    size: '50ml',
    rating: '4.8',
    review: 'Timeless and elegant, perfect for any occasion. Chanel No. 5 embodies sophistication with its complex blend of rose, jasmine, and sandalwood.',
    category: 'Female',
  ),
  Perfume(
    name: 'J\'adore',
    brand: 'Dior',
    price: '7,425.00 PHP',
    imagePath: 'images/jadore.png',
    description: 'A luminous fragrance with a bouquet of floral notes.',
    size: '50ml',
    rating: '4.9',
    review: 'J\'adore is an expression of femininity and luxury. With notes of ylang-ylang, damask rose, and jasmine, it’s a fragrance that exudes elegance and sensuality.',
    category: 'Female',
  ),
  Perfume(
    name: 'Flowerbomb',
    brand: 'Viktor & Rolf',
    price: '6,325.00 PHP',
    imagePath: 'images/flowerbomb.png',
    description: 'An explosive bouquet of fresh and sweet floral notes.',
    size: '50ml',
    rating: '4.7',
    review: 'Flowerbomb is a rich, luxurious fragrance that captivates with its complex blend of floral notes. It’s a bold and beautiful scent that makes a statement.',
    category: 'Female',
  ),
  Perfume(
    name: 'La Vie Est Belle',
    brand: 'Lancôme',
    price: '6,600.00 PHP',
    imagePath: 'images/lavie.png',
    description: 'A sweet and elegant fragrance with notes of iris, patchouli, and gourmand.',
    size: '50ml',
    rating: '4.8',
    review: 'La Vie Est Belle is a celebration of life and beauty. Its sweet, floral notes create a joyful and uplifting scent that is both elegant and irresistible.',
    category: 'Female',
  ),
  Perfume(
    name: 'Black Opium',
    brand: 'Yves Saint Laurent',
    price: '7,150.00 PHP',
    imagePath: 'images/black.png',
    description: 'A dark and seductive fragrance with notes of coffee and vanilla.',
    size: '50ml',
    rating: '4.7',
    review: 'Black Opium is a bold and captivating fragrance that is perfect for evening wear. Its blend of coffee, vanilla, and floral notes creates a unique and unforgettable scent.',
    category: 'Female',
  ),
  Perfume(
    name: 'Light Blue',
    brand: 'Dolce & Gabbana',
    price: '5,500.00 PHP',
    imagePath: 'images/lightblue.png',
    description: 'A fresh and fruity fragrance with notes of Sicilian lemon, apple, and cedar.',
    size: '50ml',
    rating: '4.6',
    review: 'Light Blue is a vibrant and refreshing fragrance that captures the essence of a sunny summer day. Its fresh, fruity notes are perfect for everyday wear.',
    category: 'Female',
  ),
  Perfume(
    name: 'Coco Mademoiselle',
    brand: 'Chanel',
    price: '7,700.00 PHP',
    imagePath: 'images/coco.png',
    description: 'A modern and sophisticated fragrance with notes of orange, jasmine, and rose.',
    size: '50ml',
    rating: '4.9',
    review: 'Coco Mademoiselle is a refined and elegant fragrance that is perfect for the modern woman. Its blend of floral and citrus notes creates a timeless and sophisticated scent.',
    category: 'Female',
  ),
  Perfume(
    name: 'Good Girl',
    brand: 'Carolina Herrera',
    price: '6,600.00 PHP',
    imagePath: 'images/good.png',
    description: 'A daring and sophisticated fragrance with notes of tuberose, jasmine, and tonka bean.',
    size: '50ml',
    rating: '4.8',
    review: 'Good Girl is a bold and seductive fragrance that captures the duality of the modern woman. Its blend of floral and gourmand notes creates a unique and captivating scent.',
    category: 'Female',
  ),
  Perfume(
    name: 'Si',
    brand: 'Giorgio Armani',
    price: '6,875.00 PHP',
    imagePath: 'images/si.png',
    description: 'A chic and modern fragrance with notes of blackcurrant, rose, and vanilla.',
    size: '50ml',
    rating: '4.7',
    review: 'Si is a sophisticated and elegant fragrance that is perfect for the modern woman. Its blend of floral and fruity notes creates a refined and luxurious scent.',
    category: 'Female',
  ),
  Perfume(
    name: 'Bloom',
    brand: 'Gucci',
    price: '7,150.00 PHP',
    imagePath: 'images/bloom.png',
    description: 'A rich and captivating fragrance with notes of tuberose, jasmine, and Rangoon creeper.',
    size: '50ml',
    rating: '4.6',
    review: 'Gucci Bloom is a luxurious and feminine fragrance that captures the essence of a blooming garden. Its floral notes are rich and intoxicating, creating a memorable and elegant scent.',
    category: 'Female',
  ),
  
  // Male perfumes
  Perfume(
    name: 'Dior Sauvage',
    brand: 'Dior',
    price: '5,225.00 PHP',
    imagePath: 'images/sauvage.png',
    description: 'A fresh and spicy fragrance with notes of bergamot, Sichuan pepper, and ambroxan.',
    size: '100ml',
    rating: '4.8',
    review: 'Dior Sauvage is a bold and refreshing fragrance that is perfect for the modern man. Its blend of spicy and citrus notes creates a powerful and memorable scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Bleu de Chanel',
    brand: 'Chanel',
    price: '6,600.00 PHP',
    imagePath: 'images/bdc.png',
    description: 'A sophisticated and woody fragrance with notes of citrus, vetiver, and cedar.',
    size: '100ml',
    rating: '4.7',
    review: 'Bleu de Chanel is a timeless and elegant fragrance that is perfect for any occasion. Its blend of woody and citrus notes creates a refined and masculine scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Acqua di Giò',
    brand: 'Giorgio Armani',
    price: '6,050.00 PHP',
    imagePath: 'images/gio.png',
    description: 'A fresh and aquatic fragrance with notes of marine, bergamot, and cedar.',
    size: '100ml',
    rating: '4.8',
    review: 'Acqua di Giò is a classic and refreshing fragrance that captures the essence of the sea. Its blend of marine and citrus notes creates a clean and invigorating scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Le Male',
    brand: 'Jean Paul Gaultier',
    price: '4,675.00 PHP',
    imagePath: 'images/lemale.png',
    description: 'A bold and seductive fragrance with notes of lavender, mint, and vanilla.',
    size: '100ml',
    rating: '4.6',
    review: 'Le Male is a distinctive and masculine fragrance that is perfect for evening wear. Its blend of spicy and sweet notes creates a unique and captivating scent.',
    category: 'Male',
  ),
  Perfume(
    name: '1 Million',
    brand: 'Paco Rabanne',
    price: '5,225.00 PHP',
    imagePath: 'images/paco.png',
    description: 'A luxurious and spicy fragrance with notes of blood mandarin, cinnamon, and leather.',
    size: '100ml',
    rating: '4.7',
    review: '1 Million is a bold and opulent fragrance that is perfect for the confident man. Its blend of spicy and leather notes creates a powerful and unforgettable scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Boss Bottled',
    brand: 'Hugo Boss',
    price: '4,950.00 PHP',
    imagePath: 'images/bossbottled.png',
    description: 'A modern and elegant fragrance with notes of apple, cinnamon, and sandalwood.',
    size: '100ml',
    rating: '4.6',
    review: 'Boss Bottled is a sophisticated and versatile fragrance that is perfect for any occasion. Its blend of fruity and woody notes creates a balanced and refined scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Eros',
    brand: 'Versace',
    price: '5,500.00 PHP',
    imagePath: 'images/eros.png',
    description: 'A fresh and oriental fragrance with notes of mint, green apple, and tonka bean.',
    size: '100ml',
    rating: '4.7',
    review: 'Eros is a bold and sensual fragrance that captures the essence of Greek mythology. Its blend of fresh and oriental notes creates a powerful and captivating scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Invictus',
    brand: 'Paco Rabanne',
    price: '5,225.00 PHP',
    imagePath: 'images/invictus.png',
    description: 'A fresh and aquatic fragrance with notes of grapefruit, marine accord, and guaiac wood.',
    size: '100ml',
    rating: '4.6',
    review: 'Invictus is a powerful and invigorating fragrance that is perfect for the active man. Its blend of aquatic and woody notes creates a fresh and dynamic scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'Terre d\'Hermès',
    brand: 'Hermès',
    price: '7,150.00 PHP',
    imagePath: 'images/terre.png',
    description: 'A woody and earthy fragrance with notes of grapefruit, flint, and oak moss.',
    size: '100ml',
    rating: '4.8',
    review: 'Terre d\'Hermès is a sophisticated and timeless fragrance that captures the essence of the earth. Its blend of woody and citrus notes creates a rich and elegant scent.',
    category: 'Male',
  ),
  Perfume(
    name: 'L\'Homme',
    brand: 'Yves Saint Laurent',
    price: '6,050.00 PHP',
    imagePath: 'images/lhomme.png',
    description: 'A fresh and woody fragrance with notes of ginger, basil, and vetiver.',
    size: '100ml',
    rating: '4.7',
    review: 'L\'Homme is a modern and elegant fragrance that is perfect for the sophisticated man. Its blend of fresh and woody notes creates a refined and masculine scent.',
    category: 'Male',
  ),
 Perfume(
  name: 'Terre d’Hermès',
  brand: 'Hermès',
  price: '7,020.00 PHP',
  imagePath: 'images/terre.png',
  description: 'A rich and earthy fragrance with notes of grapefruit, pepper, and vetiver.',
  size: '100ml',
  rating: '4.8',
  review: 'Terre d’Hermès is a luxurious and grounded fragrance that captures the essence of nature. Its blend of earthy and citrus notes creates a deep and captivating scent.',
  category: 'Male',
),

// Unisex perfumes
Perfume(
  name: 'Tom Ford Black Orchid',
  brand: 'Tom Ford',
  price: '8,100.00 PHP',
  imagePath: 'images/blackorchid.png',
  description: 'A luxurious and mysterious fragrance with notes of black truffle, ylang-ylang, and black currant.',
  size: '50ml',
  rating: '4.9',
  review: 'Tom Ford Black Orchid is a rich and seductive fragrance that is perfect for both men and women. Its blend of dark and floral notes creates a unique and captivating scent.',
  category: 'Unisex',
),
Perfume(
  name: 'CK One',
  brand: 'Calvin Klein',
  price: '4,050.00 PHP',
  imagePath: 'images/ckone.png',
  description: 'A fresh and clean fragrance with notes of pineapple, green tea, and musk.',
  size: '100ml',
  rating: '4.7',
  review: 'CK One is a classic and versatile fragrance that is perfect for everyday wear. Its blend of fresh and clean notes creates a light and refreshing scent that can be enjoyed by both men and women.',
  category: 'Unisex',
),
Perfume(
  name: 'Aventus',
  brand: 'Creed',
  price: '17,280.00 PHP',
  imagePath: 'images/aventus.png',
  description: 'A powerful and sophisticated fragrance with notes of pineapple, birch, and ambergris.',
  size: '50ml',
  rating: '4.9',
  review: 'Creed Aventus is a luxurious and bold fragrance that is perfect for both men and women. Its blend of fruity and smoky notes creates a unique and powerful scent that exudes confidence.',
  category: 'Unisex',
),
Perfume(
  name: 'Santal 33',
  brand: 'Le Labo',
  price: '15,120.00 PHP',
  imagePath: 'images/santal.png',
  description: 'A rich and woody fragrance with notes of sandalwood, cedarwood, and cardamom.',
  size: '50ml',
  rating: '4.8',
  review: 'Le Labo Santal 33 is a distinctive and luxurious fragrance that is perfect for both men and women. Its blend of woody and spicy notes creates a deep and captivating scent that is truly unique.',
  category: 'Unisex',
),
Perfume(
  name: 'Molecule 01',
  brand: 'Escentric Molecules',
  price: '7,290.00 PHP',
  imagePath: 'images/molecule.png',
  description: 'A minimalist and innovative fragrance with a single note of Iso E Super.',
  size: '100ml',
  rating: '4.7',
  review: 'Molecule 01 is a revolutionary and unique fragrance that is perfect for both men and women. Its single note of Iso E Super creates a subtle and personalized scent that adapts to the wearer.',
  category: 'Unisex',
),
Perfume(
  name: 'Black Saffron',
  brand: 'Byredo',
  price: '10,800.00 PHP',
  imagePath: 'images/blacksaffron.png',
  description: 'A warm and spicy fragrance with notes of saffron, black violet, and vetiver.',
  size: '50ml',
  rating: '4.8',
  review: 'Byredo Black Saffron is a rich and luxurious fragrance that is perfect for both men and women. Its blend of spicy and woody notes creates a deep and captivating scent that is truly unique.',
  category: 'Unisex',
),
Perfume(
  name: 'Oud Wood',
  brand: 'Tom Ford',
  price: '18,360.00 PHP',
  imagePath: 'images/oud.png',
  description: 'A rich and exotic fragrance with notes of oud, sandalwood, and Chinese pepper.',
  size: '50ml',
  rating: '4.9',
  review: 'Tom Ford Oud Wood is a luxurious and opulent fragrance that is perfect for both men and women. Its blend of exotic and woody notes creates a deep and captivating scent that is truly unique.',
  category: 'Unisex',
),
Perfume(
  name: 'Jazz Club',
  brand: 'Maison Margiela',
  price: '7,290.00 PHP',
  imagePath: 'images/jazz.png',
  description: 'A warm and spicy fragrance with notes of rum, tobacco, and vanilla.',
  size: '50ml',
  rating: '4.7',
  review: 'Maison Margiela Jazz Club is a rich and luxurious fragrance that is perfect for both men and women. Its blend of warm and spicy notes creates a deep and captivating scent that is truly unique.',
  category: 'Unisex',
),
Perfume(
  name: 'Another 13',
  brand: 'Le Labo',
  price: '15,660.00 PHP',
  imagePath: 'images/another.png',
  description: 'A clean and musky fragrance with notes of ambroxan, jasmine, and moss.',
  size: '50ml',
  rating: '4.8',
  review: 'Le Labo Another 13 is a distinctive and luxurious fragrance that is perfect for both men and women. Its blend of clean and musky notes creates a deep and captivating scent that is truly unique.',
  category: 'Unisex',
),
Perfume(
  name: 'Gypsy Water',
  brand: 'Byredo',
  price: '12,960.00 PHP',
  imagePath: 'images/gypsy.png',
  description: 'A fresh and woody fragrance with notes of bergamot, juniper berries, and sandalwood.',
  size: '50ml',
  rating: '4.7',
  review: 'Byredo Gypsy Water is a rich and luxurious fragrance that is perfect for both men and women. Its blend of fresh and woody notes creates a deep and captivating scent that is truly unique.',
  category: 'Unisex',
),
];
  void navigateToPerfumeDetails(BuildContext context, Perfume perfume) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PerfumeDetailsPage(perfume: perfume),
      ),
    );
  }

  List<Perfume> getPerfumesByCategory(String category) {
    return perfumeList.where((perfume) => perfume.category == category).toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: colorScheme.primary,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: colorScheme.primary,
          title: Text(
            'POPULAR PRODUCTS',
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: colorScheme.secondary,
            ),
          ),
          bottom: TabBar(
            labelStyle: GoogleFonts.montserrat(
              fontSize: 14,
              color: colorScheme.secondary,
            ),
            unselectedLabelStyle: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.grey,
            ),
            tabs: const [
              Tab(text: 'Males'),
              Tab(text: 'Females'),
              Tab(text: 'Unisex'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildPerfumeListView(getPerfumesByCategory('Male')),
            buildPerfumeListView(getPerfumesByCategory('Female')),
            buildPerfumeListView(getPerfumesByCategory('Unisex')),
          ],
        ),
      ),
    );
  }

  Widget buildPerfumeListView(List<Perfume> perfumes) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: perfumes.length,
            itemBuilder: (context, index) {
              final perfume = perfumes[index];
              bool isFirstItem = index == 0;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    navigateToPerfumeDetails(context, perfume);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: colorScheme.secondary,
                      ),
                      color: colorScheme.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: isFirstItem
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 200,
                                    color: Colors.grey.shade300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Image.asset(perfume.imagePath, fit: BoxFit.fitHeight),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  perfume.name,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: colorScheme.secondary,
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
                                    color: colorScheme.secondary,
                                  ),
                                ),
                              ],
                            )
                          : ListTile(
                              leading: Image.asset(perfume.imagePath, width: 80, height: 80),
                              title: Text(
                                perfume.name,
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: colorScheme.secondary,
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
                                '#${index + 1}',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: colorScheme.secondary,
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
    );
  }
}

class FavoritesTile extends StatelessWidget {
  final Perfume perfume;
  final VoidCallback onTap;

  const FavoritesTile({super.key, required this.perfume, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: colorScheme.secondary),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Image.asset(perfume.imagePath, width: 100, height: 100),
            Text(
              perfume.name,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: colorScheme.secondary,
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
