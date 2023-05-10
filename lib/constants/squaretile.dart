import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF5649C9)),
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFF2F286E)),
      child: Image.asset(
        imagePath,
        color: Colors.white,
        height: 40,
      ),
    );
  }
}
