import 'package:flutter/material.dart';
import 'business/business_list_screen.dart';
import 'profile/widget/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'), 
        centerTitle: true, 
        elevation: 0
      ),
      body: Column(
        children: [
          // Phần avatar
          ProfileCard(
            name: 'tên user nè',
            email: 'a@example.com',
            imagePath: 'assets/images/avatar.png',
            joinDate: DateTime.now(),
          ),
          
          // Tiêu đề và danh sách
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Danh sách doanh nghiệp', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              ),
            ),
          ),
          
          // Danh sách doanh nghiệp
          const Expanded(
            child: BusinessListScreen(showAppBar: false),
          ),
        ],
      ),
    );
  }
}
