import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/album.dart';

class RecentlyAlbumList extends StatelessWidget {
  const RecentlyAlbumList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: recentlyAlbums.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          final album = recentlyAlbums[index];
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  album.imageUrl,
                  width: 116,
                  height: 116,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5),
              Text(album.title, style: const TextStyle(fontSize: 12)),
            ],
          );
        },
      ),
    );
  }
}
