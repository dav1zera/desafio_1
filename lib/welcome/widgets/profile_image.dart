import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String image;
  const ProfileImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      child: ClipOval(
        child: Image.network(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
