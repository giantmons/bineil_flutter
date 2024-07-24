import 'package:appdev_proj/pages/home_page.dart';
import 'package:appdev_proj/pages/order_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        elevation: 0,
        foregroundColor: colorScheme.secondary,
        title: Text(
          'CHECK OUT',
          style: GoogleFonts.montserrat(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: double.infinity,
                height: 165,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: colorScheme.secondary),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.location,
                        size: 30,
                        color: colorScheme.secondary,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping Address",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: colorScheme.secondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Unit 308, 3/F FEMII Building, A. Soriano Jr. Avenue, Manila, Metro Manila, Philippines',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: colorScheme.secondary,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Jhoanna Robles',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14, color: colorScheme.secondary),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Flexible(
                                  child: Text(
                                    "(63+) 123 456 7891",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14, color: Colors.grey),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.chevron_right,
                            size: 25,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 120, child: Image.asset('images/libre.png')),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          'Libre Le Parfum',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, color: colorScheme.secondary),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Yves Saint Laurent',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PHP 7,500.00',
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, color: colorScheme.secondary),
                            ),
                            Text(
                              'x1',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Shipping',
                    style: GoogleFonts.montserrat(
                        fontSize: 16, color: colorScheme.secondary),
                  ),
                  Text(
                    'See all Options',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 85,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: colorScheme.secondary),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Express',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: colorScheme.secondary),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Estimated to arrive at 9 - 10 June',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            'PHP 250.00',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: colorScheme.secondary),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal, (1 item):',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: colorScheme.secondary,
                    ),
                  ),
                  Text(
                    'PHP 7,750.00',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Payment Method',
                  style: GoogleFonts.montserrat(
                      fontSize: 16, color: colorScheme.secondary),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 275.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: colorScheme.secondary)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                     Icon(
                                      CupertinoIcons.money_dollar_circle,
                                      size: 30,
                                      color: colorScheme.secondary,
                                    ),
                                    Text(
                                      'Cash',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16, color: colorScheme.secondary),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Pay cash when the package arrives at the destination',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 275.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: colorScheme.secondary)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.creditcard,
                                      size: 30,
                                      color: colorScheme.secondary,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'Bank Transfer',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16, color: colorScheme.secondary),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Login to your online bank account and make payment',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 275.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: colorScheme.secondary)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.layers,
                                      size: 30,
                                      color: colorScheme.secondary,
                                    ),
                                    Text(
                                      'Installment',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16, color: colorScheme.secondary),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Pay in an amount of time until the product is fully paid',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
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
              const SizedBox(width: 8, height: 12),
              Flexible(
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subtotal',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'PHP 7,750.00',
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: colorScheme.secondary),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderIsPlaced()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Place Order',
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


class OrderIsPlaced extends StatelessWidget {
  const OrderIsPlaced({super.key});

  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        elevation: 0,
        foregroundColor: colorScheme.secondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Icon(
              CupertinoIcons.check_mark_circled_solid,
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
                      'YOUR ORDER HAS BEEN PLACED',
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
                          const SizedBox(height: 20),
                          Text(
                            'Subtotal: PHP 7,750.00',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: colorScheme.secondary,
                            ),
                          ),
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
              padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 12),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetailsPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: const BoxDecoration(color: Colors.orange),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'ORDER DETAILS',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: colorScheme.secondary),
                  ),
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
