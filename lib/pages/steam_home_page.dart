import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_row.dart';
import '../widgets/banner_section.dart';
import '../widgets/game_section.dart';
import '../widgets/steam_bottom_nav_bar.dart';

class SteamHomePage extends StatelessWidget {
  const SteamHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E2B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 12),
              TopBar(),
              SizedBox(height: 20),
              MenuRow(),
              SizedBox(height: 20),
              BannerSection(),
              SizedBox(height: 20),
              GameSection(title: "Recommended for You"),
              SizedBox(height: 20),
              GameSection(title: "Top Sellers"),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
