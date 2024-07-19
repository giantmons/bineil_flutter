import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/perfume_tile.dart';
import '../models/perfume.dart';
import 'perfume_details_page.dart';

class EntryPage extends StatelessWidget {
  EntryPage({super.key});

final List<Perfume> perfumeList = [
  // MALE PERFUMES
  Perfume(
    name: 'SWYI Intensely',
    brand: 'Emporio Armani',
    price: '7,899.00 PHP',
    imagePath: 'images/swyi.png',
    description:
        'A bold and captivating fragrance that exudes masculinity with its blend of spicy, woody, and amber notes. Perfect for the modern man who embraces intensity and passion.',
    size: '50ml',
    rating: '4.5',
    review: 'A commanding fragrance with a powerful presence. The blend of spicy and woody notes is impressive, making it ideal for evening wear.',
  ),
  Perfume(
    name: 'Sauvage Elixir',
    brand: 'Dior',
    price: 'PHP 9,000.00',
    imagePath: 'images/sauvage.png',
    description:
        'An intense and refined fragrance that combines spicy and aromatic notes with a woody base, creating a powerful and magnetic allure. Ideal for evening wear and special occasions.',
    size: '60ml',
    rating: '4.7',
    review: 'Sauvage Elixir is a standout scent with a rich blend of spices and wood. Its magnetic allure is undeniable, though the price might be a bit steep for some.',
  ),
  Perfume(
    name: 'Aventus',
    brand: 'Creed',
    price: 'PHP 18,000.00',
    imagePath: 'images/aventus.png',
    description:
        'A legendary fragrance known for its fresh, fruity, and smoky profile, embodying strength and sophistication with its unique blend of pineapple, birch, and musk. A timeless scent for the discerning gentleman.',
    size: '100ml',
    rating: '4.9',
    review: 'Aventus lives up to its reputation with a perfectly balanced blend of fruity and smoky notes.',
  ),
  Perfume(
    name: 'Interlude Man',
    brand: 'Amouage',
    price: '7,899.00 PHP',
    imagePath: 'images/amouage.png',
    description:
        'A complex and rich fragrance with a smoky, spicy, and resinous profile, perfect for special occasions. This scent tells a story of mystery and depth, leaving a lasting impression.',
    size: '100ml',
    rating: '4.8',
    review: 'Interlude Man is an extraordinary fragrance with an intricate blend of smoky and spicy notes. Its complexity is its strength, making it ideal for special events.',
  ),
  Perfume(
    name: 'Oud Wood',
    brand: 'Tom Ford',
    price: 'PHP 13,000.00',
    imagePath: 'images/oud.png',
    description:
        'A luxurious and sophisticated fragrance with a warm, woody base and exotic spices. A timeless and enigmatic scent that embodies elegance and refinement.',
    size: '100ml',
    rating: '4.6',
    review: 'Oud Wood is a beautifully refined scent with a luxurious blend of woody and spicy notes. It’s sophisticated and elegant but comes with a high price point.',
  ),
  Perfume(
    name: 'Parfums de Marly Layton',
    brand: 'Marly Layton',
    price: 'PHP 12,000.00',
    imagePath: 'images/mayton.png',
    description:
        'A versatile and elegant fragrance with a blend of fresh, spicy, and sweet notes. Ideal for any occasion, it offers a harmonious balance of sophistication and allure.',
    size: '125ml',
    rating: '4.4',
    review: 'Layton offers a well-balanced fragrance with a blend of fresh and spicy notes. It’s versatile enough for various occasions, though its sweetness might be a bit much for some.',
  ),
  Perfume(
    name: 'Grand Soir',
    brand: 'Maison Francis Kurkdjian',
    price: 'PHP 11,000.00',
    imagePath: 'images/grand.png',
    description:
        'A warm and sensual amber fragrance that exudes elegance and sophistication. Perfect for evening wear, it envelops you in a rich and inviting aura.',
    size: '70ml',
    rating: '4.7',
    review: 'Grand Soir is a luxurious amber scent that creates a warm, inviting aura. It’s perfect for evening wear, although its sweetness might not be for everyone.',
  ),
  Perfume(
    name: 'La Nuit de L\'Homme',
    brand: 'Yves Saint Laurent',
    price: 'PHP 6,500.00',
    imagePath: 'images/lanuit.png',
    description:
        'A seductive and mysterious fragrance with a spicy and woody profile. Ideal for romantic evenings, it captivates with its deep and alluring charm.',
    size: '60ml',
    rating: '4.3',
    review: 'La Nuit de L\'Homme is a seductive scent with a deep, spicy profile. It’s great for romantic occasions but may not be as long-lasting as other options.',
  ),
  Perfume(
    name: 'Colonia Acqua di Parma',
    brand: 'Acqua di Parma',
    price: 'PHP 8,500.00',
    imagePath: 'images/parma.png',
    description:
        'A fresh and vibrant citrus fragrance with a sophisticated floral heart and a woody base. Perfect for daytime wear, it embodies the essence of Italian elegance.',
    size: '100ml',
    rating: '4.5',
    review: 'Colonia is a refreshing citrus scent that captures Italian elegance. It’s perfect for daytime wear but might be too subtle for some.',
  ),
  Perfume(
    name: 'Prada L\'Homme',
    brand: 'Prada',
    price: 'PHP 6,000.00',
    imagePath: 'images/prada.png',
    description:
        'A modern and elegant fragrance with a fresh, floral, and woody profile. Suitable for both professional and casual settings, it is a versatile and refined choice.',
    size: '100ml',
    rating: '4.4',
    review: 'Prada L\'Homme is a versatile fragrance that works well in both professional and casual settings. It’s fresh and refined but may lack depth for some preferences.',
  ),
  Perfume(
    name: 'Bleu de Chanel',
    brand: 'Chanel',
    price: 'PHP 10,000.00',
    imagePath: 'images/bdc.png',
    description:
        'A sophisticated and timeless fragrance with a blend of citrus, aromatic, and woody notes. Perfect for the discerning man, it is a symbol of elegance and style.',
    size: '100ml',
    rating: '4.8',
    review: 'Bleu de Chanel is a classic scent that exudes sophistication and style. It’s timeless and versatile, though the price might be a consideration for some.',
  ),
  Perfume(
    name: 'Acqua di Giò Profumo',
    brand: 'Giorgo Armani',
    price: 'PHP 7,500.00',
    imagePath: 'images/gio.png',
    description:
        'A fresh and aquatic fragrance with a smoky and aromatic base, perfect for any occasion. Its refined and invigorating scent captures the essence of the sea.',
    size: '75ml',
    rating: '4.6',
    review: 'Acqua di Giò Profumo is a refreshing aquatic scent with a smoky twist. It’s versatile and invigorating, making it suitable for various occasions.',
  ),
  Perfume(
    name: 'Man in Black',
    brand: 'Bvlgari',
    price: 'PHP 6,800.00',
    imagePath: 'images/man.png',
    description:
        'A bold and intense fragrance with a spicy, leathery profile, perfect for evening wear. It exudes power and confidence with its rich and commanding scent.',
    size: '100ml',
    rating: '4.5',
    review: 'Man in Black is a powerful and intense fragrance with a bold, leathery profile. It’s great for evening wear but might be too strong for everyday use.',
  ),
  Perfume(
    name: 'Santal 33',
    brand: 'Le Labo',
    price: 'PHP 15,000.00',
    imagePath: 'images/santal.png',
    description:
        'A distinctive and memorable fragrance with a woody, leathery profile and a hint of spice. Its unique and sophisticated scent is perfect for the modern, adventurous man.',
    size: '50ml',
    rating: '4.7',
    review: 'Santal 33 is a unique scent with a memorable woody and leathery profile. It’s sophisticated and adventurous but comes with a high price tag.',
  ),

  // FEMALE PERFUMES
  Perfume(
    name: 'Libre Le Parfum',
    brand: 'Yves Saint Laurent',
    price: 'PHP 7,500.00',
    imagePath: 'images/libre.png',
    description:
        'A bold and luxurious floral fragrance with a spicy twist, combining rich vanilla and lavender notes with a touch of honey. Ideal for the confident and free-spirited woman.',
    size: '50ml',
    rating: '4.6',
    review: 'Libre Le Parfum is a bold floral fragrance with a luxurious vanilla and lavender blend. It’s ideal for confident women, though its intensity might not suit everyone.',
  ),
  Perfume(
    name: 'Angel\'s Share',
    brand: 'Kilian',
    price: 'PHP 15,000.00',
    imagePath: 'images/angel.png',
    description:
        'A rich, boozy fragrance inspired by cognac, with warm and spicy undertones. Perfect for evening wear, it envelops you in a warm, sensual embrace.',
    size: '50ml',
    rating: '4.8',
    review: 'Angel\'s Share is an indulgent fragrance with a rich cognac-inspired scent. It’s perfect for evening wear and makes a warm, sensual statement.',
  ),
  Perfume(
    name: 'Goddess',
    brand: 'Burberry',
    price: 'PHP 6,800.00',
    imagePath: 'images/goddess.png',
    description:
        'A radiant and feminine scent that blends fresh citrus notes with a floral heart and a creamy base. Perfect for day-to-night wear, it exudes grace and elegance.',
    size: '50ml',
    rating: '4.4',
    review: 'Goddess is a radiant and feminine fragrance that transitions well from day to night. Its blend of citrus and floral notes is graceful but might be too light for some.',
  ),
  Perfume(
    name: 'Black Opium Le Parfum',
    brand: 'Yves Saint Laurent',
    price: 'PHP 8,000.00',
    imagePath: 'images/black.png',
    description:
        'A deeper and more intense version of the iconic Black Opium, with stronger vanilla and coffee notes. Perfect for a bold and daring night out.',
    size: '50ml',
    rating: '4.7',
    review: 'Black Opium Le Parfum offers a bold and intense scent with rich vanilla and coffee notes.',
  ),
  Perfume(
    name: 'Devotion',
    brand: 'Dolce&Gabbanna',
    price: 'PHP 7,200.00',
    imagePath: 'images/dg.png',
    description:
        'A fresh and elegant fragrance with a vibrant citrus opening and a floral heart, grounded by a warm base. Ideal for the sophisticated and devoted woman.',
    size: '50ml',
    rating: '4.5',
    review: 'Devotion is a fresh and elegant fragrance with a vibrant citrus and floral blend. It’s great for everyday wear, though its warmth might not appeal to everyone.',
  ),
  Perfume(
    name: 'Musc Noir Rose For Her',
    brand: 'Narciso Rodriguez',
    price: 'PHP 6,500.00',
    imagePath: 'images/rose.png',
    description:
        'A sensual and feminine fragrance that combines rose and musk with a sweet and spicy twist. Perfect for a romantic evening, it captures the essence of seduction.',
    size: '50ml',
    rating: '4.6',
    review: 'Musc Noir Rose For Her is a sensual and feminine fragrance with a captivating blend of rose and musk. ',
  ),
  Perfume(
    name: 'Babycat',
    brand: 'Yves Saint Laurent',
    price: 'PHP 10,000.00',
    imagePath: 'images/babycat.png',
    description:
        'A soft and sensual fragrance that combines spicy and floral notes with a warm suede base. Perfect for the playful and alluring woman.',
    size: '50ml',
    rating: '4.5',
    review: 'Babycat is a soft and sensual scent with a warm suede base. It’s playful and alluring but comes with a higher price point.',
  ),
  Perfume(
    name: 'Guidance',
    brand: 'Amouage',
    price: 'PHP 20,000.00',
    imagePath: 'images/guidance.png',
    description:
        'A sophisticated and elegant fragrance with a blend of fruity, floral, and woody notes. Ideal for the woman who seeks guidance and inspiration in her life.',
    size: '50ml',
    rating: '4.8',
    review: 'Guidance is an elegant fragrance with a sophisticated blend of fruity, floral, and woody notes. ',
  ),
  Perfume(
    name: 'Prada Paradoxe',
    brand: 'Prada',
    price: 'PHP 7,500.00',
    imagePath: 'images/paradoxe.png',
    description:
        'A modern and versatile fragrance that combines fresh citrus notes with a floral heart and a warm base. Perfect for the woman who embraces contradictions and complexity.',
    size: '50ml',
    rating: '4.4',
    review: 'Prada Paradoxe is a modern fragrance with a blend of citrus and floral notes. It’s versatile and complex, though its warmth may not appeal to everyone.',
  ),
  Perfume(
    name: 'Good Girl Blush',
    brand: 'Carolina Herrera',
    price: 'PHP 7,000.00',
    imagePath: 'images/good.png',
    description:
        'A fresh and floral fragrance with a hint of citrus, balanced by a creamy vanilla base. Ideal for the charming and confident woman who loves to make a statement.',
    size: '50ml',
    rating: '4.3',
    review: 'Good Girl Blush is a charming and confident fragrance with a fresh floral and vanilla blend. It’s great for making a statement but may not last as long as expected.',
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
    review: 'J\'adore L\'Or is a luxurious scent with rich floral and warm notes. It’s ideal for indulgence and sophistication but comes with a high price tag.',
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
    review: 'Her Elixir de Parfum is a sweet and fruity fragrance with a creamy base. It’s perfect for those who love a gourmand twist but might be too sweet for some.',
  ),

  // UNISEX
  Perfume(
    name: 'Gris Charnel Extrait',
    brand: 'BDK Parfums',
    price: 'PHP 13,000.00',
    imagePath: 'images/gris.png',
    description:
        'A rich and sophisticated fragrance with a blend of spicy, woody, and creamy notes. Perfect for those who appreciate depth and complexity in their scent.',
    size: '100ml',
    rating: '4.6',
    review: 'Gris Charnel Extrait offers a rich and sophisticated scent with a complex blend of spices and wood.',
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
    review: 'Tobacco Honey is a warm and inviting fragrance with a sweet and musky blend. It’s perfect for cozy settings but comes with a premium price.',
  ),
  Perfume(
    name: 'Golestan',
    brand: 'Tauer Perfumes',
    price: 'PHP 12,000.00',
    imagePath: 'images/golestan.png',
    description:
        'An exotic and floral fragrance with a blend of rose, saffron, and creamy sandalwood. Perfect for those who love a touch of luxury and mystique.',
    size: '50ml',
    rating: '4.7',
    review: 'Golestan is an exotic and luxurious fragrance with a unique blend of rose and saffron. It’s perfect for those seeking something mystique and high-end.',
  ),
  Perfume(
    name: 'Nexin',
    brand: 'Tauer Perfumes',
    price: 'PHP 12,000.00',
    imagePath: 'images/nexin.png',
    description:
        'A vibrant and elegant fragrance with a fresh citrus opening and a warm, woody base. Ideal for those who seek a refreshing and invigorating scent.',
    size: '50ml',
    rating: '4.5',
    review: 'Nexin offers a vibrant and elegant scent with a refreshing citrus and warm woody base. It’s invigorating but might not have the depth for some preferences.',
  ),
  Perfume(
    name: 'Lascia Chio Pianga',
    brand: 'Filippo Sorinelli',
    price: 'PHP 14,000.00',
    imagePath: 'images/lascia.png',
    description:
        'A deep and emotional fragrance with a blend of fruity, floral, and leathery notes. Perfect for those who appreciate a rich and evocative scent.',
    size: '50ml',
    rating: '4.6',
    review: 'Lascia Chio Pianga is a deep and evocative fragrance with a blend of fruity and leathery notes. It’s ideal for those who love a rich scent.',
  ),
  Perfume(
    name: 'Bake',
    brand: 'Akro',
    price: 'PHP 8,000.00',
    imagePath: 'images/bake.png',
    description:
        'A gourmand fragrance that evokes the comforting aroma of freshly baked goods with sweet and spicy notes. Ideal for those who love a cozy and inviting scent.',
    size: '50ml',
    rating: '4.3',
    review: 'Bake is a gourmand fragrance that brings the comfort of freshly baked goods. It’s cozy and inviting but might be too sweet for some tastes.',
  ),
  Perfume(
    name: 'Cherry Smoke',
    brand: 'Tom Ford',
    price: 'PHP 15,000.00',
    imagePath: 'images/cherry.png',
    description:
        'A bold and sensual fragrance with a smoky cherry scent, complemented by warm and spicy undertones. Perfect for a daring and unforgettable impression.',
    size: '50ml',
    rating: '4.7',
    review: 'Cherry Smoke offers a bold and sensual experience with a smoky cherry scent. It’s unforgettable but comes with a high price tag.',
  ),
  Perfume(
    name: 'Cologne Officinale',
    brand: 'James Heeley',
    price: 'PHP 9,000.00',
    imagePath: 'images/cologne.png',
    description:
        'A fresh and clean fragrance with a blend of citrus, herbal, and woody notes, perfect for everyday wear. Ideal for those who appreciate simplicity and elegance.',
    size: '50ml',
    rating: '4.4',
    review: 'Cologne Officinale is a fresh and clean scent with a simple blend of citrus and herbs. It’s elegant for everyday wear but may lack complexity for some.',
  ),
  Perfume(
    name: 'Ani X',
    brand: 'Nishane',
    price: 'PHP 14,000.00',
    imagePath: 'images/anix.png',
    description:
        'A versatile and elegant fragrance with a fresh opening, floral heart, and a warm, woody base. Ideal for any occasion, it embodies sophistication and charm.',
    size: '50ml',
    rating: '4.6',
    review: 'Ani X is a versatile and elegant fragrance with a sophisticated blend of floral and woody notes. It’s ideal for any occasion but may be too complex for some preferences.',
  ),
  Perfume(
    name: 'Un Jardin à Cythère',
    brand: 'Hermès',
    price: 'PHP 11,000.00',
    imagePath: 'images/jardin.png',
    description:
        'A fresh and Mediterranean-inspired fragrance with a blend of citrus, fig, and woody notes. Perfect for a refreshing and invigorating scent that transports you to the Mediterranean coast.',
    size: '100ml',
    rating: '4.5',
    review: 'Un Jardin à Cythère offers a refreshing Mediterranean-inspired scent with citrus and fig. It’s invigorating but might lack depth for some.',
  ),
  Perfume(
    name: 'Tonka Cola',
    brand: 'Mancera',
    price: 'PHP 9,000.00',
    imagePath: 'images/tonka.png',
    description:
        'A playful and nostalgic fragrance that combines the scent of cola with warm spices and sweet vanilla. Ideal for those who love a fun and unique scent.',
    size: '120ml',
    rating: '4.4',
    review: 'Tonka Cola is a playful fragrance with a nostalgic cola scent and warm spices. It’s fun and unique but may not appeal to those who prefer traditional scents.',
  ),
  Perfume(
    name: 'Vanille Antique',
    brand: 'Byredo',
    price: 'PHP 18,000.00',
    imagePath: 'images/byredo.png',
    description:
        'A luxurious and creamy vanilla fragrance with rich amber and woody notes. Perfect for those who appreciate a rich and indulgent scent.',
    size: '50ml',
    rating: '4.7',
    review: 'Vanille Antique is a luxurious vanilla fragrance with rich amber and woody notes. It’s perfect for indulgence but comes with a high price.',
  ),
  Perfume(
    name: 'Opus XIV - Royal Tobacco',
    brand: 'Amouage',
    price: 'PHP 16,000.00',
    imagePath: 'images/opus.png',
    description:
        'A regal and complex fragrance with a blend of spicy, herbal, and tobacco notes. Ideal for those who seek a sophisticated and distinguished scent.',
    size: '100ml',
    rating: '4.8',
    review: 'Opus XIV - Royal Tobacco is a regal and complex fragrance with spicy and tobacco notes. It’s sophisticated and distinguished but may be too intense for some.',
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
    switch (category) {
      case 'male':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenPerfumesPage(
              perfumes: perfumeList.sublist(0, 14),
            ),
          ),
        );
        break;
      case 'female':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WomenPerfumesPage(
              perfumes: perfumeList.sublist(14, 26),
            ),
          ),
        );
        break;
      case 'unisex':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UnisexPerfumesPage(
              perfumes: perfumeList.sublist(26),
            ),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Perfumes',
                            hintStyle: GoogleFonts.montserrat(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                          ),
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.camera,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            // PROMO CONTAINER
            const ImageCarousel(),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'MEN PERFUMES',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  InkWell(
                    onTap: () => navigateToCategoryPage(context, 'male'),
                    child: const Text(
                      'View All',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: perfumeList.length < 8 ? perfumeList.length : 8,
                  itemBuilder: (context, index) => PerfumeTile(
                    perfume: perfumeList[index],
                    onTap: () => navigateToPerfumeDetails(context, index),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'FEMALE PERFUMES',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  InkWell(
                    onTap: () => navigateToCategoryPage(context, 'female'),
                    child: const Text(
                      'View All',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      perfumeList.length >= 22 ? 8 : perfumeList.length - 14,
                  itemBuilder: (context, index) {
                    final actualIndex = index + 14;
                    return PerfumeTile(
                      perfume: perfumeList[actualIndex],
                      onTap: () =>
                          navigateToPerfumeDetails(context, actualIndex),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'UNISEX PERFUMES',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  InkWell(
                    onTap: () => navigateToCategoryPage(context, 'unisex'),
                    child: const Text(
                      'View All',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      perfumeList.length > 26 ? perfumeList.length - 26 : 0,
                  itemBuilder: (context, index) {
                    final actualIndex = index + 26;
                    return PerfumeTile(
                      perfume: perfumeList[actualIndex],
                      onTap: () =>
                          navigateToPerfumeDetails(context, actualIndex),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}


class MenPerfumesPage extends StatelessWidget {
  final List<Perfume> perfumes;

  const MenPerfumesPage({super.key, required this.perfumes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Men Perfumes',
            style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
          ),
        ),
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(4.0), 
          child: Container(
            color: Colors.white, 
            height: 1.0, 
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(CupertinoIcons.bag),
          )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75, 
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: perfumes.length,
        itemBuilder: (context, index) => PerfumeTile(
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

class WomenPerfumesPage extends StatelessWidget {
  final List<Perfume> perfumes;

  const WomenPerfumesPage({super.key, required this.perfumes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Female Perfumes',
            style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
          ),
        ),
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(4.0), 
          child: Container(
            color: Colors.white, 
            height: 1.0,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(CupertinoIcons.bag),
          )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75, 
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: perfumes.length,
        itemBuilder: (context, index) => PerfumeTile(
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

class UnisexPerfumesPage extends StatelessWidget {
  final List<Perfume> perfumes;

  const UnisexPerfumesPage({super.key, required this.perfumes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Men Perfumes',
            style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
          ),
        ),
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(4.0), 
          child: Container(
            color: Colors.white, 
            height: 1.0, 
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(CupertinoIcons.bag),
          )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.75,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: perfumes.length,
        itemBuilder: (context, index) => PerfumeTile(
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

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final List<String> imageAssets = [
    'images/promo_1.png',
    'images/promo_2.png',
    'images/promo_3.png',
  ];

  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imageAssets.map((assetPath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    assetPath,
                    fit: BoxFit.contain,
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageAssets.map((url) {
            int index = imageAssets.indexOf(url);
            return Container(
              width: 20.0,
              height: 4.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: _currentIndex == index ? Colors.orange : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
