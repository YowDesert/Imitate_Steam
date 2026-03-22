import 'package:flutter/material.dart';
import 'discount_grid_card.dart';

class YourDlcSection extends StatelessWidget {
  const YourDlcSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dlcGames = [
      {
        'image': 'assets/games_img/1501750.jpg',
        'discount': '-50%',
        'oldPrice': 'NT\$ 1,199',
        'newPrice': 'NT\$ 599',
      },
      {
        'image': 'assets/games_img/1535560.jpg',
        'discount': '-50%',
        'oldPrice': 'NT\$ 2,200',
        'newPrice': 'NT\$ 1,100',
      },
      {
        'image': 'assets/games_img/1623730.jpg',
        'discount': '-50%',
        'oldPrice': 'NT\$ 1,199',
        'newPrice': 'NT\$ 599',
      },
      {
        'image': 'assets/games_img/1659040.jpg',
        'discount': '-50%',
        'oldPrice': 'NT\$ 1,099',
        'newPrice': 'NT\$ 549',
      },
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '您遊戲的 DLC',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                '查看更多為您推薦的 DLC',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFF2B2948),
              borderRadius: BorderRadius.circular(4),
            ),
            child: GridView.builder(
              itemCount: dlcGames.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 8,
                childAspectRatio: 1.35,
              ),
              itemBuilder: (context, index) {
                final game = dlcGames[index];

                return DiscountGridCard(
                  imageUrl: game['image']!,
                  discount: game['discount']!,
                  oldPrice: game['oldPrice']!,
                  newPrice: game['newPrice']!,
                  cardWidth: double.infinity,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
