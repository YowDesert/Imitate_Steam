import 'package:flutter/material.dart';

import 'discount_grid_card.dart';

class SteamDeckSection extends StatelessWidget {
  const SteamDeckSection({super.key});

  @override
  Widget build(BuildContext context) {
    const steamDeckBannerAspectRatio = 1700 / 285;

    final games = [
      {
        'image': 'assets/games_img/1091500.jpg',
        'discount': '-65%',
        'oldPrice': 'NT\$ 1,599',
        'newPrice': 'NT\$ 559',
      },
      {
        'image': 'assets/games_img/1105670.jpg',
        'discount': '-90%',
        'oldPrice': 'NT\$ 408',
        'newPrice': 'NT\$ 40',
      },
      {
        'image': 'assets/games_img/1145350.jpg',
        'discount': '-25%',
        'oldPrice': 'NT\$ 488',
        'newPrice': 'NT\$ 366',
      },
      {
        'image': 'assets/games_img/1149460.jpg',
        'discount': '-66%',
        'oldPrice': 'NT\$ 566',
        'newPrice': 'NT\$ 192',
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.46;
    final rowHeight = cardWidth / (16 / 9) + 52;

    return Container(
      width: double.infinity,
      color: const Color(0xFF2B2948),
      padding: const EdgeInsets.fromLTRB(16, 22, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.circle_outlined,
                color: Colors.white70,
                size: 26,
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Steam Deck 特別優惠',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFE7E7E7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  '查看全部',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: rowHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: games.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final game = games[index];

                return DiscountGridCard(
                  imageUrl: game['image']!,
                  discount: game['discount']!,
                  oldPrice: game['oldPrice']!,
                  newPrice: game['newPrice']!,
                  cardWidth: cardWidth,
                );
              },
            ),
          ),
          const SizedBox(height: 22),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: AspectRatio(
              aspectRatio: steamDeckBannerAspectRatio,
              child: Image.asset(
                'assets/img/steam_deck.jpg',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
