import 'package:flutter/material.dart';
import 'song_list_constructor_screen.dart';
import 'song_list_builder_screen.dart';

class MusicHomeScreen extends StatelessWidget {
  const MusicHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nhạc Việt'),
      ),
      body: ListView(
        children: [
          _buildMenuItem(
            context,
            'Danh sách bài hát (Constructor)',
            const SongListConstructorScreen(),
          ),
          _buildMenuItem(
            context,
            'Danh sách bài hát (Builder)',
            const SongListBuilderScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, Widget screen) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}
