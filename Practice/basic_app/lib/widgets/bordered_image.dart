import 'package:flutter/material.dart';

class BorderedImage extends StatelessWidget {
  final String imagePath;
  final double size;
  final bool isNetworkImage;

  const BorderedImage({
    Key? key, 
    required this.imagePath,
    this.size = 50,
    this.isNetworkImage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue, width: 3),
        image: DecorationImage(
          image: isNetworkImage 
              ? NetworkImage(imagePath) as ImageProvider
              : AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}