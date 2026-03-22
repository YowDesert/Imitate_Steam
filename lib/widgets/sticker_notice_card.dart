import 'package:flutter/material.dart';

class StickerNoticeCard extends StatelessWidget {
  const StickerNoticeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff171A21),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 左邊三張小卡圖示
          SizedBox(
            width: 92,
            height: 72,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 0,
                  top: 6,
                  child: Transform.rotate(
                    angle: -0.18,
                    child: _smallStickerCard(
                      'assets/games_img/1797610.jpg',
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 0,
                  child: _smallStickerCard(
                    'assets/games_img/1808500.jpg',
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 6,
                  child: Transform.rotate(
                    angle: 0.16,
                    child: _smallStickerCard(
                      'assets/games_img/1868140.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 14),

          // 右邊文字
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '查看您的整個探索佇列就可獲得免費貼紙！',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '即日起至 3 月 27 日止 - 檢視您的貼紙',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _smallStickerCard(String imageUrl) {
    return Container(
      width: 48,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
