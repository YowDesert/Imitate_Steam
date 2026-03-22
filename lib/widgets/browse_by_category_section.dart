import 'package:flutter/material.dart';
import 'category_browse_card.dart';

class BrowseByCategorySection extends StatelessWidget {
  const BrowseByCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        'title': '非常適合 DECK',
        'image': 'assets/games_img/1286680.jpg',
        'color': const Color(0xFFC23A2B),
      },
      {
        'title': '角色扮演',
        'image': 'assets/games_img/1295660.jpg',
        'color': const Color(0xFFD39A1D),
      },
      {
        'title': '開放世界',
        'image': 'assets/games_img/1313140.jpg',
        'color': const Color(0xFF2C7FB8),
      },
      {
        'title': '策略',
        'image': 'assets/games_img/1426210.jpg',
        'color': const Color(0xFF5A3FA3),
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;

    // 一張卡大約佔螢幕寬度 46%，這樣一排會看到兩張
    final cardWidth = screenWidth * 0.46;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '依類別瀏覽',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 18),

          SizedBox(
            height: cardWidth / 1.1, // 配合 AspectRatio: 1.1
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 14),
              itemBuilder: (context, index) {
                final item = categories[index];

                return SizedBox(
                  width: cardWidth,
                  child: CategoryBrowseCard(
                    imageUrl: item['image'] as String,
                    title: item['title'] as String,
                    overlayColor: item['color'] as Color,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
