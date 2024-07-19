import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          "ORDER DETAILS",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 55.0, vertical: 12),
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
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.location,
                      color: Colors.orange, size: 30),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'From',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Rm. 202 Buendia Shopping Plaza Gil Puyat Avenue 1200, Makati City, Metro Manila, Philippines',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.car,
                      color: Colors.orange, size: 30),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send to',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Unit 308, 3/F FEMII Building, A. Soriano Jr. Avenue, Manila, Metro Manila, Philippines',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.cube,
                      color: Colors.orange, size: 30),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Weight',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '1.45 kg',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
              child: HorizontalProgressBar(
                progress: 0.6, // Set the progress value here (0.0 to 1.0)
                icons: [
                  CupertinoIcons.cart, // Ordered
                  CupertinoIcons.cube_box, // Processed
                  CupertinoIcons.car, // Shipped
                  CupertinoIcons.home // Delivered
                ], // Define your order status icons here
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalProgressBar extends StatelessWidget {
  final double progress;
  final List<IconData> icons;

  const HorizontalProgressBar({
    super.key,
    required this.progress,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: icons.asMap().entries.map((entry) {
        int index = entry.key;
        IconData icon = entry.value;
        bool isCompleted = (index + 1) / icons.length <= progress;

        return Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: isCompleted ? Colors.orange : Colors.grey,
              child: Icon(
                icon,
                size: 25,
                color: Colors.white,
              ),
            ),
            if (index < icons.length - 1)
              Container(
                width: 50, // Adjust the width as needed
                height: 2,
                color: isCompleted ? Colors.orange : Colors.grey,
              ),
          ],
        );
      }).toList(),
    );
  }
}
