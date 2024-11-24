import 'package:flutter/material.dart';

import 'articles.dart';
import 'cactus.dart'; // Import CactusScreen
import 'camera.dart';
import 'circle.dart';
import 'identify.dart';
import 'learn.dart';
import 'login.dart';
import 'read.dart';
import 'species.dart'; // Import SpeciesScreen
import 'spinach.dart';
import 'even.dart'; // Import EvenScreen
import 'end.dart'; // Import EndScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        '/learn': (context) => const LearnScreen(),
        '/read': (context) => const ReadScreen(),
        '/login': (context) => const LoginScreen(),
        '/identify': (context) => const IdentifyScreen(),
        '/spinach': (context) => const SpinachScreen(),
        '/camera': (context) =>
            CameraScreen(imagePath: 'assets/images/camera.png'),
        '/species': (context) => const SpeciesScreen(),
        '/cactus': (context) => const CactusScreen(),
        '/circle': (context) => const CircleScreen(),
        '/articles': (context) =>
            const ArticlesScreen(), // Khai báo màn hình CactusScreen
        '/even': (context) =>
            const EvenScreen(), // Khai báo màn hình CactusScreen
        '/end': (context) =>
            const EndScreen(), // Khai báo màn hình EndScreen
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/Group1.png',
                        width: 255,
                        height: 255.14,
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Identify Plants',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "You can identify the plants you don't know through your camera",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigating to the LearnScreen
                        Navigator.pushNamed(context, '/learn');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
