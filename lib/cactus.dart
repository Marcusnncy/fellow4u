import 'package:flutter/material.dart';
import 'circle.dart'; // Import CircleScreen

class CactusScreen extends StatelessWidget {
  const CactusScreen({super.key});

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
                                  'Cactus',
                                  style: TextStyle(
                                    fontSize: 20, // Tăng kích thước chữ
                                    color: Colors.white,
                                  ),
                                ),
                              ],
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
                // Danh sách các loài xương rồng
                ListView(
                  shrinkWrap: true, // Ensures the ListView doesn't expand to full height
                  padding: const EdgeInsets.all(16),
                  children: [
                    CactusTile(
                      name: 'Red Cactus',
                      imagePath: 'assets/images/red.png',
                      description:
                          'Cactus spines are produced from specialized structures...',
                      kingdom: 'Plantae',
                      family: 'Cactaceae',
                      imageWidth: 125, // Thêm tham số kích thước ảnh
                      imageHeight: 125, // Thêm tham số kích thước ảnh
                    ),
                    SizedBox(height: 16),
                    CactusTile(
                      name: 'Fat Cactus',
                      imagePath: 'assets/images/fat.png',
                      description:
                          'Cactus spines are produced from specialized structures...',
                      kingdom: 'Plantae',
                      family: 'Cactaceae',
                      imageWidth: 125, // Thêm tham số kích thước ảnh
                      imageHeight: 125, // Thêm tham số kích thước ảnh
                    ),
                    SizedBox(height: 16),
                    CactusTile(
                      name: 'Circle Cactus',
                      imagePath: 'assets/images/circle.png',
                      description:
                          'Cactus spines are produced from specialized structures...',
                      kingdom: 'Plantae',
                      family: 'Cactaceae',
                      imageWidth: 125, // Thêm tham số kích thước ảnh
                      imageHeight: 125, // Thêm tham số kích thước ảnh
                    ),
                  ],
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
      // Nút quay lại
      floatingActionButton: Positioned(
        top: 50, // Đặt vị trí ở trên
        left: 10, // Đặt vị trí sang trái một chút
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // Màu trắng
          onPressed: () {
            Navigator.pop(context); // Quay lại màn hình trước đó
          },
        ),
      ),
    );
  }
}

class CactusTile extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;
  final String kingdom;
  final String family;
  final double imageWidth;
  final double imageHeight;

  const CactusTile({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.kingdom,
    required this.family,
    required this.imageWidth,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (name == 'Circle Cactus') {
          // Khi nhấn vào "Circle Cactus", chuyển sang CircleScreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CircleScreen()),
          );
        }
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Ảnh loài xương rồng với kích thước cụ thể
              Image.asset(
                imagePath,
                width: imageWidth, // Sử dụng tham số kích thước ảnh
                height: imageHeight, // Sử dụng tham số kích thước ảnh
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 16),
              // Thông tin loài xương rồng
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 22, // Tăng kích thước chữ cho tên
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kingdom',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(kingdom, style: const TextStyle(fontSize: 18)),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Family',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(family, style: const TextStyle(fontSize: 18)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16, // Giảm kích thước cho mô tả
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
