import 'package:flutter/material.dart';
import 'discount_grid_card.dart';

class MajorDiscountSection extends StatelessWidget {
  const MajorDiscountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final games = [
      {
        'image': 'assets/games_img/413420.jpg',
        'discount': '-90%',
        'oldPrice': 'NT\$ 468',
        'newPrice': 'NT\$ 46',
      },
      {
        'image': 'assets/games_img/489830.jpg',
        'discount': '-75%',
        'oldPrice': 'NT\$ 1,199',
        'newPrice': 'NT\$ 299',
      },
      {
        'image': 'assets/games_img/521890.jpg',
        'discount': '-90%',
        'oldPrice': 'NT\$ 488',
        'newPrice': 'NT\$ 48',
      },
      {
        'image': 'assets/games_img/553850.jpg',
        'discount': '-25%',
        'oldPrice': 'NT\$ 1,190',
        'newPrice': 'NT\$ 892',
      },
      {
        'image': 'assets/games_img/585420.jpg',
        'discount': '-90%',
        'oldPrice': 'NT\$ 378',
        'newPrice': 'NT\$ 37',
      },
      {
        'image': 'assets/games_img/617290.jpg',
        'discount': '-90%',
        'oldPrice': 'NT\$ 568',
        'newPrice': 'NT\$ 56',
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.46; // 一次大概看到兩張多一點
    final rowHeight = cardWidth / (16 / 9) + 52;
    // 圖片高度 + 價格列高度

    return Container(
      width: double.infinity,
      color: const Color(0xFF2B2948),
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '精選重大折扣',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            '一些經典中的經典帶來難得的特別優惠',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 14),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                '查看全部',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            height: rowHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: games.length,
              separatorBuilder: (_, __) => const SizedBox(width: 14),
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
        ],
      ),
    );
  }
}
