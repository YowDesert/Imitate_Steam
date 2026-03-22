import 'package:flutter/material.dart';

class HorizontalGameCard extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String oldPrice;
  final String newPrice;
  final double cardWidth;

  const HorizontalGameCard({
    super.key,
    required this.imageUrl,
    required this.discount,
    required this.oldPrice,
    required this.newPrice,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: AspectRatio(
        aspectRatio: 0.90,
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset(imageUrl, fit: BoxFit.cover)),

            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.65),
                    ],
                  ),
                ),
              ),
            ),

            // 價格區
            Positioned(
              right: 0,
              bottom: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    color: const Color(0xFFB6E354),
                    child: Text(
                      discount,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    color: const Color(0xFF2A3142),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          oldPrice,
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          newPrice,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
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
    );
  }
}
