import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/album.dart';
import '../models/song.dart';

import '../widgets/carousel.dart';
import '../widgets/now_playing_bar.dart';
import '../widgets/recently_album_list.dart';
import '../widgets/recently_played_list.dart';
import '../widgets/suggested_album_list.dart';
import '../widgets/section_header.dart';
import '../widgets/bottom_nav_bar.dart';

import 'song_list.dart';


class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
               padding: const EdgeInsets.symmetric(vertical: 20),
                children: [
                  _buildWelcomeHeader(),
                  _buildMainTitle(),
                  const Carousel(),
                  const SizedBox(height: 20),
                  const SectionHeader(title: "Recently Album"),
                  const RecentlyAlbumList(),
                  const SizedBox(height: 20),
                  const SectionHeader(title: "Recently played song"),
                  const RecentlyPlayedList(),
                  const SizedBox(height: 20),
                  const SectionHeader(title: "Suggested Album Covers"),
                  const SuggestedAlbumList(),
                  const SizedBox(height: 120),
                ],
              ),
            ),
            const NowPlayingBar(),
          ],
        ),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _bottomNavIndex,
          children: [
            // Tab 0: Home (giữ nguyên UI cũ)
            Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    children: [
                      _buildWelcomeHeader(),
                      _buildMainTitle(),
                      const Carousel(),
                      const SizedBox(height: 20),
                      const SectionHeader(title: "Recently Album"),
                      const RecentlyAlbumList(),
                      const SizedBox(height: 20),
                      const SectionHeader(title: "Recently played song"),
                      const RecentlyPlayedList(),
                      const SizedBox(height: 20),
                      const SectionHeader(title: "Suggested Album Covers"),
                      const SuggestedAlbumList(),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
                const NowPlayingBar(),
              ],
            ),

            // Tab 1: Find — list bài hát vừa chơi gần đây
            SongListPage(songs: recentlyPlayedSongs),

            // Tab 2: Library — cũng dùng mock giống Find, hoặc bạn thay list khác nếu có
            SongListPage(songs: recentlyPlayedSongs),

            // Tab 3: Account (giữ placeholder)
            const Center(child: Text('Account', style: TextStyle(color: Colors.white))),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }

  Widget _buildWelcomeHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: ShapeDecoration(
            color: const Color(0xFF723F1C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Text(
            'Hi! YNhi',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 29, vertical: 20),
      child: Text(
        'What will you start today?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
      ),
    );
  }
}
