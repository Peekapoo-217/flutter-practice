import 'package:flutter/material.dart';

class GridDemoScreen extends StatelessWidget {
  const GridDemoScreen({super.key});

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
    const crossAxisCount = 2;
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.5,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {

        final row = index ~/ crossAxisCount;
        final col = index % crossAxisCount;
        final isEvenCell = (row + col) % 2 == 0;

        final color = isEvenCell ? Colors.blue[100] : Colors.green[100];
        
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
                  'Màu ${index.isEven ? 'Xanh dương' : 'Xanh lá'}\\nNhạt',
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
