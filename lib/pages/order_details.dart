import 'package:appdev_proj/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        foregroundColor: colorScheme.secondary,
        backgroundColor: colorScheme.primary,
        title: Text(
          "ORDER DETAILS",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: colorScheme.secondary,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Padding(
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
                      child: Image.asset('images/libre.png', fit: BoxFit.cover),
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            _buildDetailRow(
              context,
              icon: CupertinoIcons.location,
              title: 'From',
              detail:
                  'Rm. 202 Buendia Shopping Plaza Gil Puyat Avenue 1200, Makati City, Metro Manila, Philippines',
            ),
            _buildDetailRow(
              context,
              icon: CupertinoIcons.car,
              title: 'Send to',
              detail:
                  'Unit 308, 3/F FEMII Building, A. Soriano Jr. Avenue, Manila, Metro Manila, Philippines',
            ),
            _buildDetailRow(
              context,
              icon: CupertinoIcons.cube,
              title: 'Weight',
              detail: '1.45 kg',
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(CupertinoIcons.check_mark_circled,
                          color: Colors.orange, size: 20),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order is Processed',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Waiting for the order to be packed',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(CupertinoIcons.check_mark_circled,
                          color: Colors.orange, size: 20),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order is Packed',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Waiting for the order to be picked up by the delivery service',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(CupertinoIcons.xmark_circle,
                          color: Colors.grey, size: 20),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Towards Destination',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Waiting for the order to reach the final destination',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(CupertinoIcons.xmark_circle,
                          color: Colors.grey, size: 20),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order is Delivered',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'The order is successfully delivered to the target address',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context,
      {required IconData icon, required String title, required String detail}) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  detail,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
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
    final colorScheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth =
            (constraints.maxWidth - (icons.length - 1) * 50) / icons.length;
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
                    color: colorScheme.secondary,
                  ),
                ),
                if (index < icons.length - 1)
                  Container(
                    width: itemWidth,
                    height: 2,
                    color: isCompleted ? Colors.orange : Colors.grey,
                  ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}


class OrderIsCompleted extends StatelessWidget {
  const OrderIsCompleted({super.key});
  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
        backgroundColor: Colors.black,
              appBar: AppBar(
        foregroundColor: colorScheme.secondary,
        backgroundColor: colorScheme.primary,
        title: Text(
          "ORDER DETAILS",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: colorScheme.secondary,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
                        Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Icon(CupertinoIcons.check_mark_circled, size: 60, color: Colors.orange,),
            Text(
              'Order is Delivered', style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
            ),
              ],
            ),
            SizedBox(height: 20),
            RatingContainer(),
                        const Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
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
                      child: Image.asset('images/oud.png', fit: BoxFit.cover),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Oud Wood',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: colorScheme.secondary,
                            ),
                          ),
                          Text(
                            'Tom Ford',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Order ID: 14352624432',
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            _buildDetailRow(
              context,
              icon: CupertinoIcons.location,
              title: 'From',
              detail:
                  'Rm. 202 Buendia Shopping Plaza Gil Puyat Avenue 1200, Makati City, Metro Manila, Philippines',
            ),
            _buildDetailRow(
              context,
              icon: CupertinoIcons.car,
              title: 'Send to',
              detail:
                  'Unit 308, 3/F FEMII Building, A. Soriano Jr. Avenue, Manila, Metro Manila, Philippines',
            ),
            _buildDetailRow(
              context,
              icon: CupertinoIcons.cube,
              title: 'Weight',
              detail: '1.45 kg',
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: HorizontalProgressBar(
                progress: 1.0, // Set the progress value here (0.0 to 1.0)
                icons: [
                  CupertinoIcons.cart, // Ordered
                  CupertinoIcons.cube_box, // Processed
                  CupertinoIcons.car, // Shipped
                  CupertinoIcons.home // Delivered
                ], // Define your order status icons here
              ),
            ),
            SizedBox(height: 25),

          ]),
        ),
      ),
    );
  }
    Widget _buildDetailRow(BuildContext context,
      {required IconData icon, required String title, required String detail}) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  detail,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RatingContainer extends StatefulWidget {
  @override
  _RatingContainerState createState() => _RatingContainerState();
}

class _RatingContainerState extends State<RatingContainer> {
  double _currentRating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Rate this product:',
            style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white),
          ),
          SizedBox(height: 8.0),
          RatingBar.builder(
            initialRating: _currentRating,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.white,
            ),
            onRatingUpdate: (rating) {
              setState(() {
                _currentRating = rating;
              });
            },
          ),
          SizedBox(height: 8.0),
          Text(
            'Rating: ${_currentRating.toString()}',
            style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.grey),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PostRatingPage()));
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'SUBMIT', style: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
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

class PostRatingPage extends StatelessWidget {
  const PostRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: Colors.black,
            body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            const Icon(
              CupertinoIcons.star_circle_fill,
              size: 80,
              color: Colors.orange,
            ),
            const SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 400,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'YOUR RATING IS HIGHLY APPRECIATED!',
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        color: colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: colorScheme.secondary),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Image(image: AssetImage('images/oud.png')),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Oud Wood',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: colorScheme.secondary,
                            ),
                          ),
                          Text(
                            'Tom Ford',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.orange,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'CONTINUE SHOPPING',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}