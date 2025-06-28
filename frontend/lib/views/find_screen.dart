import 'package:flutter/material.dart';
import 'find_song.dart';

class Album {
  final String imagePath;
  final String title;
  final String tracks;
  final String likes;

  const Album({
    required this.imagePath,
    required this.title,
    this.tracks = '23 TRACKS',
    this.likes = '2.3 mill likes',
  });
}

class FindScreen extends StatefulWidget {
  const FindScreen({super.key});

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  final List<Album> albums = const [
    Album(imagePath: 'assets/images/download_8.png', title: 'Only Child'),
    Album(imagePath: 'assets/images/OIP_11.png', title: 'Almond Blossom'),
    Album(imagePath: 'assets/images/download_9.png', title: 'ADELE 25'),
    Album(imagePath: 'assets/images/OIP_13.png', title: 'Fujii Kaze'),
    Album(imagePath: 'assets/images/OIP_12.png', title: 'Ariana Grande'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0x30D9D9D9),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFF6E3D1E)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindSongScreen()),
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white54),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Search artist, music',
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                        ),
                      ),
                      Icon(Icons.mic_none, color: Colors.white54),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                itemBuilder: (context, index) {
                  final album = albums[index];
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          album.imagePath,
                          width: double.infinity,
                          height: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 14,
                        bottom: 45,
                        child: Text(
                          album.tracks,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        bottom: 20,
                        child: Text(
                          album.likes,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: 24),
                itemCount: albums.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
