import 'package:flutter/material.dart';
import 'horizontal_game_card.dart';

class FeaturedGamesRow extends StatelessWidget {
  const FeaturedGamesRow({super.key});

  @override
  Widget build(BuildContext context) {
    final games = [
      {
        'image': 'assets/games_img/239140.jpg',
        'discount': '-90%',
        'oldPrice': 'NT\$ 670',
        'newPrice': 'NT\$ 67',
      },
      {
        'image': 'assets/games_img/252490.jpg',
        'discount': '-50%',
        'oldPrice': 'NT\$ 749',
        'newPrice': 'NT\$ 374',
      },
      {
        'image': 'assets/games_img/275850.jpg',
        'discount': '-60%',
        'oldPrice': 'NT\$ 898',
        'newPrice': 'NT\$ 359',
      },
      {
        'image': 'assets/games_img/381210.jpg',
        'discount': '-60%',
        'oldPrice': 'NT\$ 379',
        'newPrice': 'NT\$ 151',
      },
      {
        'image': 'assets/games_img/summer.jpg',
        'discount': '-10%',
        'oldPrice': 'NT\$ 329',
        'newPrice': 'NT\$ 296',
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.68;
    final rowHeight = cardWidth / 0.95;
    // 因為 AspectRatio = 0.95，所以高度大約是 width / 0.95

    return SizedBox(
      height: rowHeight,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: games.length,
        separatorBuilder: (_, __) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          final game = games[index];

          return HorizontalGameCard(
            imageUrl: game['image']!,
            discount: game['discount']!,
            oldPrice: game['oldPrice']!,
            newPrice: game['newPrice']!,
            cardWidth: cardWidth,
          );
        },
      ),
    );
  }
}
