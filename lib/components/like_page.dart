import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 44,
      width: 44,
      decoration: const BoxDecoration(
        color: Color(0xFFFF6464),
        shape: BoxShape.circle,

      ),
      child:  const Icon(
        Icons.favorite,
        color: Colors.white,
        size: 26.0,
      ),
    );
  }
}
