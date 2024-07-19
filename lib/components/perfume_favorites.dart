import 'package:flutter/material.dart';
import '../models/perfume.dart';

class FavoritesTile extends StatelessWidget {
  final Perfume perfume;
  final VoidCallback onTap;

  const FavoritesTile({super.key, required this.perfume, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: Image.asset(
                  perfume.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const Positioned(
              top: 8.0,
              right: 8.0,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
