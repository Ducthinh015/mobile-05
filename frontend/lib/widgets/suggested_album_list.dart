import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/song.dart';

class SuggestedAlbumList extends StatelessWidget {
  const SuggestedAlbumList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: suggestedAlbums.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          final album = suggestedAlbums[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              album.imageUrl,
              width: 130,
              height: 130,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}