import 'package:flutter/material.dart';
import 'package:steam_imitate_app/widgets/featured_games_row.dart';
import '../widgets/top_bar.dart';
import '../widgets/menu_row.dart';
import '../widgets/banner_section.dart';
import '../widgets/game_section.dart';
import '../widgets/steam_bottom_nav_bar.dart';
import '../widgets/major_discount_section.dart';
import '../widgets/two_column_game_section.dart';
import '../widgets/browse_by_category_section.dart';
import '../widgets/steam_deck_section.dart';
import '../widgets/your_dlc_section.dart';
import '../widgets/sticker_notice_card.dart';
import '../widgets/discovery_queue_banner.dart';

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

              SizedBox(height: 40),
              FeaturedGamesRow(),
              SizedBox(height: 28),
              MajorDiscountSection(),
              SizedBox(height: 24),
              TwoColumnGameSection(
                title: '更多特價遊戲',
                games: [
                  {
                    'image': 'assets/games_img/646570.jpg',
                    'discount': '-75%',
                    'oldPrice': 'NT\$ 499',
                    'newPrice': 'NT\$ 124',
                  },
                  {
                    'image': 'assets/games_img/698670.jpg',
                    'discount': '-90%',
                    'oldPrice': 'NT\$ 569',
                    'newPrice': 'NT\$ 56',
                  },
                  {
                    'image': 'assets/games_img/703080.jpg',
                    'discount': '-75%',
                    'oldPrice': 'NT\$ 975',
                    'newPrice': 'NT\$ 243',
                  },
                  {
                    'image': 'assets/games_img/814380.jpg',
                    'discount': '-50%',
                    'oldPrice': 'NT\$ 1,590',
                    'newPrice': 'NT\$ 795',
                  },
                  {
                    'image': 'assets/games_img/892970.jpg',
                    'discount': '-50%',
                    'oldPrice': 'NT\$ 568',
                    'newPrice': 'NT\$ 284',
                  },
                  {
                    'image': 'assets/games_img/976730.jpg',
                    'discount': '-75%',
                    'oldPrice': 'NT\$ 1,199',
                    'newPrice': 'NT\$ 299',
                  },
                  {
                    'image': 'assets/games_img/990080.jpg',
                    'discount': '-85%',
                    'oldPrice': 'NT\$ 1,690',
                    'newPrice': 'NT\$ 253',
                  },
                  {
                    'image': 'assets/games_img/1086940.jpg',
                    'discount': '-25%',
                    'oldPrice': 'NT\$ 1,599',
                    'newPrice': 'NT\$ 1,199',
                  },
                ],
              ),
              YourDlcSection(),
              SizedBox(height: 24),
              StickerNoticeCard(),
              SizedBox(height: 24),
              DiscoveryQueueBanner(),
              SizedBox(height: 24),
              SteamDeckSection(),
              SizedBox(height: 24),
              BrowseByCategorySection(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
