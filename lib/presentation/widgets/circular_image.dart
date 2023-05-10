import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.size = 128,
    this.image = "default-image-icon.png",
  });

  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    final radius = size / 2;

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        image,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
