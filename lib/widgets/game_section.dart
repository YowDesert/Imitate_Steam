import 'package:flutter/material.dart';
import '/widgets/game_card_large.dart';
import '/widgets/game_card_small.dart';

class GameSection extends StatelessWidget {
  final String title;

  const GameSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 區塊標題
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 2,
                child: GameCardLarge(
                  imageUrl: 'assets/games_img/1174180.jpg',
                  discount: '-75%',
                  price: 'NT\$ 447',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    GameCardSmall(
                      imageUrl: 'assets/games_img/1222140.jpg',
                      discount: '-90%',
                      price: 'NT\$ 99',
                    ),
                    SizedBox(height: 12),
                    GameCardSmall(
                      imageUrl: 'assets/games_img/1245620.jpg',
                      discount: '-35%',
                      price: 'NT\$ 1,163',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
