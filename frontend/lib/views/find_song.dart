import 'package:flutter/material.dart';
import 'find_artist.dart';


/// Placeholder image URL as per instructions.
const String _placeholderImageUrl =
    "https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg";

/// Data model for a song.
class Song {
  final String title;
  final String artist;
  final String imageUrl;

  const Song({
    required this.title,
    required this.artist,
    required this.imageUrl,
  });
}

/// Data model for an artist.
class Artist {
  final String name;
  final String imageUrl;
  final String description;

  const Artist({
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}

/// Mock data for the UI.
final List<Song> _mockSongs = <Song>[
  const Song(title: 'Damn', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Tabiji', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Garden', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: '“Seishun Sick”', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Kirari', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Nan-nan', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Golden Hour', artist: 'JVKE, Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Yaba', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Shinunoga E-wa', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Matsuri', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'Kiri Ga Naikara', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
  const Song(title: 'YASASHISA', artist: 'Fuji Kaze', imageUrl: _placeholderImageUrl),
];

final List<Artist> _mockRelatedArtists = <Artist>[
  const Artist(name: 'Olivia Rodrigo', imageUrl: _placeholderImageUrl, description: ''),
  const Artist(name: 'Taylor Swift', imageUrl: _placeholderImageUrl, description: ''),
  const Artist(name: 'Charlie Puth', imageUrl: _placeholderImageUrl, description: ''),
  const Artist(name: 'Sasha Sloan', imageUrl: _placeholderImageUrl, description: ''),
  const Artist(name: 'JVKE', imageUrl: _placeholderImageUrl, description: ''),
  const Artist(name: 'Lana Del Rey', imageUrl: _placeholderImageUrl, description: ''),
];

const Artist _fujiiKaze = Artist(
  name: 'Fujii Kaze',
  imageUrl: _placeholderImageUrl,
  description:
      'Fujii Kaze (born 1997) is a Japanese singer-songwriter and pianist. He started uploading piano covers on YouTube at 12 and debuted with "Nan-Nan" in 2019. His first album Help Ever Hurt Never (2020) and viral hit "Shinunoga E-Wa" brought him international fame.',
);

class ArtistAvatar extends StatelessWidget {
  final String name;
  const ArtistAvatar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(_placeholderImageUrl),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class SongItem extends StatelessWidget {
  final Song song;
  const SongItem({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(song.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  song.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  song.artist,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.80,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.more_vert, color: Colors.white54),
        ],
      ),
    );
  }
}

class FindSong extends StatelessWidget {
  const FindSong({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Search Bar
            Container(
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0x30D9D9D9),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF6E3D1E),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 12),
                  const Icon(Icons.search, color: Colors.white54),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Fujii Kaze',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            ..._mockSongs.map<Widget>((Song song) => SongItem(song: song)).toList(),
            const SizedBox(height: 24),

            Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(_fujiiKaze.imageUrl),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Singer",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      _fujiiKaze.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Related artists',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Poppins',
                height: 1.0,
              ),
            ),
            const SizedBox(height: 16),
SizedBox(
  height: 130,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: _mockRelatedArtists.map<Widget>((Artist artist) {
      return Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FindArtistScreen(artist: artist),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(artist.imageUrl),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              artist.name,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      );
    }).toList(),
  ),
),

            const SizedBox(height: 24), // Add some padding at the bottom
          ],
        ),
      ),
    );
  }
}

/// The main screen that hosts the FindSong content.
class FindSongScreen extends StatelessWidget {
  const FindSongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Music Search',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Handle settings or more options
            },
          ),
        ],
      ),
      body: const FindSong(),
    );
  }
}

/// The entry point of the Flutter application.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FindSongScreen(),
    );
  }
}