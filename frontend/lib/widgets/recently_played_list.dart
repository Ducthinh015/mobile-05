import 'package:flutter/material.dart';
import '../data/mock_data.dart';


class RecentlyPlayedList extends StatelessWidget {
  const RecentlyPlayedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: recentlyPlayedSongs.map((song) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              song.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(song.title),
          subtitle: Text(song.artist),
        );
      }).toList(),
    );
  }
}