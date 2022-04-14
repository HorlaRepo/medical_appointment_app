import 'package:flutter/material.dart';

class CircleCategory extends StatelessWidget {
  final String imageUrl;
  final Color color1;
  final Color color2;
  final String title;
  const CircleCategory({
    Key? key,
    required this.imageUrl,
    required this.color1,
    required this.color2,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90.0,
          width: 90.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: ImageIcon(
            AssetImage(imageUrl),
            color: Colors.white,
            size: 40,
          ),
        ),
        const SizedBox(height: 20.0),
        Text(title),
      ],
    );
  }
}
