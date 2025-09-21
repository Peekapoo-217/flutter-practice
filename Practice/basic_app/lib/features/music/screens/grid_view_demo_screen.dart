import 'package:flutter/material.dart';

class GridViewDemoScreen extends StatelessWidget {
  const GridViewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Demo'),
      ),
      body: _buildGrid(),
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 cột
        crossAxisSpacing: 8.0, // Khoảng cách giữa các cột
        mainAxisSpacing: 8.0, // Khoảng cách giữa các hàng
        childAspectRatio: 1.5, // Tỷ lệ chiều rộng/chiều cao
      ),
      itemCount: 10, // Số lượng item
      itemBuilder: (context, index) {
        // Màu xen kẽ giữa xanh dương và xanh lá
        final color = index.isEven ? Colors.blue[100] : Colors.green[100];
        
        return Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Item ${index + 1}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Màu ${index.isEven ? 'Xanh dương' : 'Xanh lá'}\nNhạt',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
