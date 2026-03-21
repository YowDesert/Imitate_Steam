import 'package:flutter/material.dart';
import 'game_card_large.dart';
import 'game_card_small.dart';

class GameSection extends StatelessWidget {
  final String title;

  const GameSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: GameCardLarge()),
          SizedBox(width: 12),
          Expanded(flex: 1, child: GameCardSmall()),
        ],
      ),
    );
  }
}
