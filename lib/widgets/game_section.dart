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
                  imageUrl: 'https://picsum.photos/700/900?random=11',
                  discount: '-50%',
                  price: 'NT\$ 1,014',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    GameCardSmall(
                      imageUrl: 'https://picsum.photos/400/300?random=12',
                      discount: '-30%',
                      price: 'NT\$ 951',
                    ),
                    SizedBox(height: 12),
                    GameCardSmall(
                      imageUrl: 'https://picsum.photos/400/300?random=13',
                      discount: '-75%',
                      price: 'NT\$ 374',
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
