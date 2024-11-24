import 'package:flutter/material.dart';

import 'articles.dart'; // Đảm bảo đúng đường dẫn import
import 'camera.dart';
import 'end.dart'; // Đảm bảo import EndScreen đúng cách

class IdentifyScreen extends StatelessWidget {
  const IdentifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container with Linear Gradient background
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF61D2C4), // Gradient colors
                        Color(0xFF29D890),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Greeting and Profile
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello Go Min- si,',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Let’s Learn More About Plants',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // Chuyển đến màn hình EndScreen khi nhấn vào ảnh CircleAvatar
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EndScreen(),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                radius: 24,
                                backgroundImage: AssetImage(
                                  'assets/images/eye.jpg',
                                ), // Profile image
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search For Plants',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(210, 210, 210, 1),
                                width: 1.7,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Button Row with Navigation
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Phân bố đều các nút
                  children: [
                    Child(
                      label: 'IDENTIFY',
                      icon: Image.asset(
                        'assets/images/pho.png', // Ảnh icon cho button
                        width: 21,
                        height: 21,
                      ),
                      color: Color(0xFF2DDA93), // Màu nền cho nút
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CameraScreen(
                              imagePath:
                                  'assets/images/camera.png', // Path for image
                            ),
                          ),
                        );
                      },
                    ),
                    Child(
                      label: 'SPECIES',
                      icon: Image.asset(
                        'assets/images/cay.png', // Icon for button
                        width: 21,
                        height: 21,
                      ),
                      color: Colors.white, // Background color for the button
                      labelColor: Colors.black, // Set text color to black
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/species'); // Navigate to SpeciesScreen
                      },
                    ),
                    Child(
                      label: 'ARTICLES',
                      icon: Image.asset(
                        'assets/images/book.png', // Icon for button
                        width: 21,
                        height: 21,
                      ),
                      color: Colors.white, // Background color for the button
                      labelColor: Colors.black,
                      onPressed: () {
                        // Navigate to SpinachScreen when pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArticlesScreen(),
                          ),
                        );
                      }, // Set text color to black
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Phần "Plant Types"
                SectionTitle(title: 'Plant Types'),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PlantCard(
                        title: 'Home Plants',
                        subtitle: '68 Types of Plants',
                        image: 'assets/images/home.png',
                      ),
                      SizedBox(width: 10),
                      PlantCard(
                        title: 'Humid Plants',
                        subtitle: '102 Types of Plants',
                        image: 'assets/images/home2.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Phần "Photography"
                SectionTitle(title: 'Photography'),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PhotographyCard(
                        label: '#Mini',
                        image: 'assets/images/mini1.png',
                      ),
                      SizedBox(width: 20),
                      PhotographyCard(
                        label: '#Cute',
                        image: 'assets/images/cute.png',
                      ),
                      SizedBox(width: 20),
                      PhotographyCard(
                        label: '#Cute',
                        image: 'assets/images/mini2.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF2DDA93),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 40), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
      ),
    );
  }
}

// Widget con cho nút "IDENTIFY"
class Child extends StatelessWidget {
  final String label;
  final Widget icon;
  final Color color;
  final Color labelColor;
  final VoidCallback? onPressed;

  Child({
    required this.label,
    required this.icon,
    required this.color,
    this.labelColor = Colors.white,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        label,
        style: TextStyle(
          color: labelColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: Size(100, 50),
      ),
    );
  }
}

// Section Title Widget
class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// PlantCard Widget
class PlantCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  PlantCard({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, // Đặt chiều rộng của card
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 4), // Đổ bóng cho card
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image,
              width: 160,
              height: 100,
              fit: BoxFit.cover), // Hình ảnh trong card
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

// PhotographyCard Widget
class PhotographyCard extends StatelessWidget {
  final String label;
  final String image;

  PhotographyCard({required this.label, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140, // Đặt chiều rộng của card
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 4), // Đổ bóng cho card
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image,
              width: 120, height: 80, fit: BoxFit.cover), // Hình ảnh trong card
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
