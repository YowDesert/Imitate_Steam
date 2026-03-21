import 'package:flutter/material.dart';

class GameCardLarge extends StatelessWidget {
  const GameCardLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF202636),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://picsum.photos/500/700',
            height: 360,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: const Color(0xff2a3142),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Text(
                  '-30%',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Color(0xFFB6E354),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'NT\$ 1,049',
                    style: TextStyle(color: Colors.white, fontSize: 22),
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
