import 'package:flutter/material.dart';

class GameCardLarge extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String price;

  const GameCardLarge({
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
              height: 360,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

          // 價格列
          Container(
            color: const Color(0xFF2A3142),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  color: const Color(0xFFB6E354),
                  child: Text(
                    discount,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    price,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
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
