import 'package:flutter/material.dart';

class DiscountGridCard extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String oldPrice;
  final String newPrice;
  final double cardWidth;

  const DiscountGridCard({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 圖片
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // 價格列
          Container(
            width: double.infinity,
            color: const Color(0xFF2A3142),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  color: const Color(0xFFB6E354),
                  child: Text(
                    discount,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        oldPrice,
                        style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 11,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        newPrice,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
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
    );
  }
}
