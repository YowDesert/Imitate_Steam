import 'package:flutter/material.dart';

class GameCardSmall extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String price;

  const GameCardSmall({
    super.key,
    required this.imageUrl,
    required this.discount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF202636),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

          // 下方價格區
          Container(
            color: const Color(0xFF2A3142),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
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
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    price,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    overflow: TextOverflow.ellipsis,
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
