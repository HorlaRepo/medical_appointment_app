import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;
  const UserProfileImage({
    Key? key,
    required this.imageUrl,
    this.size = 48.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(
        imageUrl,
        height: size + 20,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
