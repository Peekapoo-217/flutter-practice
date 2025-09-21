import 'package:flutter/material.dart';

class SongListBuilderScreen extends StatefulWidget {
  const SongListBuilderScreen({super.key});

  @override
  State<SongListBuilderScreen> createState() => _SongListBuilderScreenState();
}

class _SongListBuilderScreenState extends State<SongListBuilderScreen> {
  final List<Map<String, dynamic>> songCategories = [
    {
        'category': 'Nhạc Pop',
      'songs': [
        {'title': 'Em của ngày hôm qua', 'artist': 'Sơn Tùng M-TP'},
        {'title': 'Chạy ngay đi', 'artist': 'Sơn Tùng M-TP'},
        {'title': 'Hãy trao cho anh', 'artist': 'Sơn Tùng M-TP'},
      ],
    },
    {
      'category': 'Nhạc Trữ tình',
      'songs': [
        {'title': 'Mưa trên phố Huế', 'artist': 'Minh Kỳ'},
        {'title': 'Thương về miền Trung', 'artist': 'Như Quỳnh'},
      ],
    },
    {
      'category': 'Nhạc EDM',
      'songs': [
        {'title': 'Đi để trở về', 'artist': 'Soobin Hoàng Sơn'},
        {'title': 'Lạc trôi', 'artist': 'Sơn Tùng M-TP'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách bài hát (Builder)'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _getTotalItems(),
        itemBuilder: (context, index) => _buildListItem(index),
      ),
    );
  }

  int _getTotalItems() => songCategories.fold<int>(
        0,
        (total, category) => total + 1 + (category['songs'] as List).length,
      );

  Widget _buildListItem(int index) {
    int currentIndex = 0;
    
    for (var category in songCategories) {
      if (index == currentIndex) {
        return _buildCategoryHeader(category['category']);
      }
      currentIndex++;

      final songs = category['songs'] as List;
      if (index < currentIndex + songs.length) {
        final song = songs[index - currentIndex];
        return _buildSongTile(song['title'], song['artist']);
      }
      currentIndex += songs.length;
    }

    return const SizedBox.shrink();
  }

  Widget _buildCategoryHeader(String title) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  ),
  );

  Widget _buildSongTile(String title, String artist) => ListTile(
    leading: const CircleAvatar(
      child: Icon(Icons.music_note, color: Colors.white),
      backgroundColor: Colors.blue,
    ),
    title: Text(title),
    subtitle: Text(artist),
    trailing: const Icon(Icons.play_arrow, color: Colors.blue),
    onTap: () {},
  );
}
