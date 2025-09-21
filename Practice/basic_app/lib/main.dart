import 'package:basic_app/features/home_screen.dart';
import 'package:basic_app/features/music/screens/music_home_screen.dart';
import 'package:basic_app/features/profile/profile_screen.dart';
import 'package:basic_app/features/profile/widget/profile_card.dart';
import 'package:flutter/material.dart';
import 'features/grid_demo/widgets/grid_demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GridDemoScreen()
    );
  }
}
