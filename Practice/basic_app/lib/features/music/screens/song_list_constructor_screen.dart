import 'package:flutter/material.dart';

class SongListConstructorScreen extends StatelessWidget {
  const SongListConstructorScreen({super.key});

  final _songs = const {
    'Nhạc Pop': [
      _Song('Em của ngày hôm qua', 'Sơn Tùng M-TP'),
      _Song('Chạy ngay đi', 'Sơn Tùng M-TP'),
      _Song('Hãy trao cho anh', 'Sơn Tùng M-TP'),
    ],
    'Nhạc Trữ tình': [
      _Song('Mưa trên phố Huế', 'Minh Kỳ'),
      _Song('Thương về miền Trung', 'Như Quỳnh'),
    ],
    'Nhạc EDM': [
      _Song('Đi để trở về', 'Soobin Hoàng Sơn'),
      _Song('Lạc trôi', 'Sơn Tùng M-TP'),
    ],
  };

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: _buildAppBar('Danh sách bài hát (Constructor)'),
    body: ListView(
      children: _songs.entries
          .expand((e) => [_buildCategoryHeader(e.key), ...e.value])
          .toList(),
    ),
  );

  AppBar _buildAppBar(String title) => AppBar(
    title: Text(title),
    centerTitle: true,
  );

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
}

class _Song extends StatelessWidget {
  final String title;
  final String artist;

  const _Song(this.title, this.artist);

  @override
  Widget build(BuildContext context) => ListTile(
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
