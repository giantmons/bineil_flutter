import 'package:appdev_proj/pages/cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/perfume.dart';

class PerfumeDetailsPage extends StatefulWidget {
  final Perfume perfume;
  const PerfumeDetailsPage({super.key, required this.perfume});

  @override
  State<PerfumeDetailsPage> createState() => _PerfumeDetailsPageState();
}

class _PerfumeDetailsPageState extends State<PerfumeDetailsPage> {
  bool isFavorite = false;
  final TextEditingController _textController = TextEditingController();

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void showInputDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;
        return AlertDialog(
          backgroundColor: colorScheme.primary,
          title: Text(
            'Enter your question',
            style: GoogleFonts.montserrat(
                color: colorScheme.secondary, fontSize: 16),
          ),
          content: TextField(
            style: GoogleFonts.montserrat(
              color: colorScheme.secondary,
              fontSize: 16,
            ),
            controller: _textController,
            decoration: InputDecoration(
                hintText: "Type here...",
                hintStyle: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 16,
                )),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Cancel',
                style: GoogleFonts.montserrat(
                    fontSize: 16, color: colorScheme.secondary),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Enter',
                style: GoogleFonts.montserrat(
                    fontSize: 16, color: colorScheme.secondary),
              ),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: colorScheme.secondary,
        title: Center(
          child: Text(
            'PRODUCT DETAILS',
            style: GoogleFonts.montserrat(
              fontSize: 16,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              CupertinoIcons.bag,
              size: 25,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 350,
                    color: Colors.grey.shade300,
                    child: Transform.scale(
                      scale: 0.7,
                      child: Image.asset(
                        widget.perfume.imagePath,
                        height: 50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.perfume.name,
                            style: GoogleFonts.montserrat(
                              color: colorScheme.secondary,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            widget.perfume.price,
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.perfume.brand,
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'Size:   ',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: colorScheme.secondary,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade800,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.perfume.size,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: colorScheme.secondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Description',
                    style: GoogleFonts.montserrat(
                      color: colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    widget.perfume.description,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),

                //insert here
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'Customer Review',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: colorScheme.secondary,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 6),
                        const Icon(
                          CupertinoIcons.star_fill,
                          color: Colors.orange,
                          size: 13,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          widget.perfume.rating,
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: 115,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CircleAvatar(
                            radius: 20, // Adjust radius as needed
                            backgroundColor: colorScheme
                                .secondary, // Background color of the circle
                            child: Icon(
                              Icons.person,
                              size: 30, // Adjust size as needed
                              color: colorScheme.primary, // Icon color
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 4), // Add spacing between icon and text
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.perfume.review,
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                textAlign:
                                    TextAlign.justify, // Center text alignment
                              ),
                              const SizedBox(
                                  height:
                                      8), // Add spacing between review and rating
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: colorScheme.primary,
          border: Border(
            top: BorderSide(
              color: colorScheme.secondary,
              width: 1.0,
            ),
          ),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(
                child: GestureDetector(
                  onTap: toggleFavorite,
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      isFavorite
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                      color: colorScheme.secondary,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartPage()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
