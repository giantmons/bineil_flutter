import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
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
                detail: 'Rm. 202 Buendia Shopping Plaza Gil Puyat Avenue 1200, Makati City, Metro Manila, Philippines',
              ),
              _buildDetailRow(
                context,
                icon: CupertinoIcons.car,
                title: 'Send to',
                detail: 'Unit 308, 3/F FEMII Building, A. Soriano Jr. Avenue, Manila, Metro Manila, Philippines',
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
              const SizedBox(height: 15),
              _buildDetailRow(
                context,
                icon: CupertinoIcons.check_mark,
                title: 'Order is processed',
                detail: 'Waiting for the order to be packed',
              ),
              _buildDetailRow(
                context,
                icon: CupertinoIcons.check_mark,
                title: 'Order is packed',
                detail: 'Waiting for the order to be picked up by the delivery service',
              ),
              _buildDetailRow(
                context,
                icon: CupertinoIcons.xmark,
                title: 'Towards Destination',
                detail: 'Waiting for the order to reach the final destination',
              ),
              _buildDetailRow(
                context,
                icon: CupertinoIcons.xmark,
                title: 'Order is Delivered',
                detail: 'The order is successfully delivered to the target address',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context, {required IconData icon, required String title, required String detail}) {
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
                  overflow: TextOverflow.ellipsis,
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
        final itemWidth = (constraints.maxWidth - (icons.length - 1) * 50) / icons.length;
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
