import 'package:flutter/material.dart';
import 'discount_grid_card.dart';

class TwoColumnGameSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> games;

  const TwoColumnGameSection({
    super.key,
    required this.title,
    required this.games,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),
          GridView.builder(
            itemCount: games.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 一排兩張
              crossAxisSpacing: 16,
              mainAxisSpacing: 18,
              childAspectRatio: 1.40,
            ),
            itemBuilder: (context, index) {
              final game = games[index];

              return DiscountGridCard(
                imageUrl: game['image']!,
                discount: game['discount']!,
                oldPrice: game['oldPrice']!,
                newPrice: game['newPrice']!,
                cardWidth: double.infinity,
              );
            },
          ),
        ],
      ),
    );
  }
}
