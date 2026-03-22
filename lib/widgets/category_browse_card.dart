import 'package:flutter/material.dart';

class CategoryBrowseCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color overlayColor;

  const CategoryBrowseCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1, // 控制卡片比例，接近你截圖那種方中帶寬
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),

            // 2. 顏色遮罩
            Positioned.fill(
              child: Container(
                color: overlayColor.withOpacity(0.45),
              ),
            ),

            // 3. 額外深色漸層，讓文字更清楚
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.15),
                      Colors.transparent,
                      Colors.black.withOpacity(0.18),
                    ],
                  ),
                ),
              ),
            ),

            // 4. 中間白色標籤
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
