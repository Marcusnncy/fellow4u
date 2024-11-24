import 'package:flutter/material.dart';

import 'spinach.dart'; // Đảm bảo import màn hình SpinachScreen

// CameraScreen, nơi hiển thị ảnh
class CameraScreen extends StatelessWidget {
  final String imagePath; // Để nhận đường dẫn hình ảnh

  const CameraScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          // Bấm vào ảnh để chuyển sang màn hình SpinachScreen
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SpinachScreen(),
              ),
            );
          },
          child: Container(
            width: 375, // Chiều rộng cụ thể
            height: 812, // Chiều cao cụ thể
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain, // Đảm bảo hình ảnh hiển thị vừa khung
            ),
          ),
        ),
      ),
    );
  }
}
