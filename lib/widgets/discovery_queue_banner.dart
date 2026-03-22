import 'package:flutter/material.dart';

class DiscoveryQueueBanner extends StatelessWidget {
  const DiscoveryQueueBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bannerWidth = (screenWidth - 32);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: bannerWidth / 5,
          width: bannerWidth,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: AspectRatio(
              aspectRatio: 1.95,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF5C3D87),
                            Color(0xFF4B6FAE),
                            Color(0xFF203252),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.20,
                      child: Image.asset(
                        'assets/games_img/1774580.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '瀏覽您的探索佇列',
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '點擊就可開啟最暢銷、最新和推薦遊戲的佇列',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
