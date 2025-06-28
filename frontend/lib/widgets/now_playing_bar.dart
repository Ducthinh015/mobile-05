import 'package:flutter/material.dart';

class NowPlayingBar extends StatelessWidget {
  const NowPlayingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.black87,
      child: Row(
        children: const [
          Icon(Icons.music_note, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Now Playing: Example Song',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(Icons.pause, color: Colors.white),
        ],
      ),
    );
  }
}
