import 'package:flutter/material.dart';

class SteamBottomNavBar extends StatelessWidget {
  const SteamBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: Color(0xFF171A21),
        border: Border(top: BorderSide(color: Color(0xFF2A475E), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _NavIcon(icon: Icons.local_offer, isSelected: true), 
          _NavIcon(icon: Icons.article_outlined), 
          _NavIcon(icon: Icons.shield_outlined), 
          _NavIcon(icon: Icons.notifications_none), 
          _NavIcon(icon: Icons.menu),
        ],
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const _NavIcon({required this.icon, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: isSelected ? const Color(0xFF1A9FFF) : Colors.white70,
      size: 30,
    );
  }
}
