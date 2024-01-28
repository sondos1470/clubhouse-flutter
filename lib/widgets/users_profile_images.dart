import 'package:flutter/material.dart';


class UserProfileImage extends StatelessWidget {
  final String image;
  final double size;

  const UserProfileImage({
    super.key,
    required this.image,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size/2 -size/6),
      child: Image.asset(
        image,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
