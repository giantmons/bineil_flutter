import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/perfume.dart';

class PerfumeTile extends StatelessWidget {
  final Perfume perfume;
  final void Function()? onTap;

  const PerfumeTile({
    super.key,
    required this.perfume,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 210,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //image
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Image.asset(
                    perfume.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //text

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        perfume.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        perfume.price,
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontSize: 12),
                      ),
                    ],
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
