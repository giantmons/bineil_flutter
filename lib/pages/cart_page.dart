import 'package:appdev_proj/pages/check_out.dart';
import 'package:appdev_proj/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          'MY CART',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: colorScheme.secondary,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.secondary),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CartItem(
                imagePath: 'images/sauvage.png',
                name: 'Sauvage Elixir',
                brand: 'Dior',
                price: 'PHP 9,000.00'),
            CartItem(
                imagePath: 'images/libre.png',
                name: 'Libre Le Parfum',
                brand: 'Yves Saint Laurent',
                price: 'PHP 7,500.00'),
            CartItem(
                imagePath: 'images/cherry.png',
                name: 'Cherry Smoke',
                brand: 'Tom Ford',
                price: 'PHP 15,000.00'),
            CartItem(
                imagePath: 'images/gio.png',
                name: 'Acqua di Giò Profumo',
                brand: 'Giorgo Armani',
                price: 'PHP 7,500.00'),
            CartItem(
                imagePath: 'images/tonka.png',
                name: 'Tonka Cola',
                brand: 'Mancera',
                price: 'PHP 9,000.00'),
            CartItem(
                imagePath: 'images/santal.png',
                name: 'Santal 33',
                brand: 'Le Labo',
                price: 'PHP 15,000.00'),
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
                        'PHP 0.00',
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
                            builder: (context) => const CheckOutPage()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Checkout',
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

class CartItem extends StatefulWidget {
  final String imagePath;
  final String name;
  final String brand;
  final String price;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.brand,
    required this.price,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool _isSelected = false;
  int _counter = 0;

  void _toggleSelect() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter = _counter > 0 ? _counter - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Dismissible(
      key:
          UniqueKey(), // Use UniqueKey for Dismissible to distinguish between items
      direction:
          DismissDirection.endToStart, // Swipe from right to left to dismiss
      background: Container(
        color: Colors.red, // Background color when swiping
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.delete,
          color: colorScheme.secondary,
        ),
      ),
      onDismissed: (direction) {
        // Handle item dismissal here (e.g., remove item from cart)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Item dismissed')),
        );
      },
      child: buildCartItem(),
    );
  }

  Widget buildCartItem() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Center(
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: colorScheme.secondary,
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 8),
              IconButton(
                icon: Icon(
                  _isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                  color: _isSelected
                      ? colorScheme.secondary
                      : Colors.grey.shade800,
                ),
                iconSize: 23,
                onPressed: _toggleSelect,
              ),
              const SizedBox(width: 5),
              Image(
                image: AssetImage(widget.imagePath),
                height: 110,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text(
                        widget.name,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: colorScheme.secondary,
                        ),
                      ),
                    ),
                    Text(
                      widget.brand,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, right: 10),
                      child: Row(
                        children: [
                          Text(
                            widget.price,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: colorScheme.secondary,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: colorScheme.secondary,
                                ),
                                onPressed: _decrement,
                              ),
                              Text(
                                '$_counter',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: colorScheme.secondary,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: colorScheme.secondary,
                                ),
                                onPressed: _increment,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
