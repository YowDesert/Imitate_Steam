import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Stack(
            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 30,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE85D5D),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xFF2A2F3C),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 14),
                  Icon(Icons.blur_circular, color: Colors.grey, size: 24),
                  SizedBox(width: 8),
                  Text(
                    'STEAM',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search, color: Colors.white70, size: 34),
                  SizedBox(width: 12),
                ],
              ),
            ),
          ),

          const SizedBox(width: 12),
          const Icon(Icons.more_vert, color: Colors.white70, size: 28),
          const SizedBox(width: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              'https://avatars.fastly.steamstatic.com/ab1a827e2157192266669d17b1f4eaf112d52b09_full.jpg',
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
