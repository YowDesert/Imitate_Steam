import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xff2a2f3c),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 14),
                  const Icon(Icons.blur_circular, color: Colors.grey, size: 26),
                  const SizedBox(width: 8),
                  const Text(
                    'STEAM',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.search, color: Colors.grey, size: 26),
                  const SizedBox(width: 14),
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
              'https://picsum.photos/60',
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
