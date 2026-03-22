import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('選單 ˅', style: TextStyle(color: Colors.white, fontSize: 16)),
          Text('願望清單', style: TextStyle(color: Colors.white, fontSize: 16)),
          Text(
            '錢包 (NT\$ 72000.49)',
            style: TextStyle(color: Color(0xFF4AA3FF), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
