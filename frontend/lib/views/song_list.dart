import 'package:flutter/material.dart';
import '../data/mock_data.dart';      // để lấy sẵn list recentlyPlayedSongs
import '../models/song.dart';
import '../widgets/song_list_item.dart';

class SongListPage extends StatelessWidget {
  final List<Song> songs;
  const SongListPage({Key? key, required this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      itemCount: songs.length,
      separatorBuilder: (_, __) => const Divider(height: 1, color: Colors.grey),
      itemBuilder: (context, index) {
        return SongListItem(song: songs[index]);
      },
    );
  }
}
