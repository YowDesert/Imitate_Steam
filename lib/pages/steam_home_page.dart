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

      // 底部導覽列
      bottomNavigationBar: const SteamBottomNavBar(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 12),

              // 上方搜尋列
              TopBar(),

              SizedBox(height: 18),

              // 第二排選單
              MenuRow(),

              SizedBox(height: 20),

              // 大橫幅
              BannerSection(),

              SizedBox(height: 24),

              // 遊戲區塊
              GameSection(title: "根據您遊玩的遊戲所推薦"),
              SizedBox(height: 28),

              GameSection(title: "Steam Deck 上人氣最高"),
              SizedBox(height: 28),

              GameSection(title: "精選重大折扣"),
              SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
