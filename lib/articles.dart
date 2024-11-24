import 'package:flutter/material.dart';

import 'even.dart'; // Import màn hình chi tiết

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

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
                // Header, search bar, etc. (giữ nguyên)
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF61D2C4),
                        Color(0xFF29D890),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Articles',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search For Articles',
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
                // Danh sách bài viết
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    // Bài viết 1 (không điều hướng)
                    ArticleTile(
                      imagePath: 'assets/images/ar1.png',
                      title:
                          'David Austin, Who Breathed Life Into the Rose, Is Dead at 92',
                      author: 'Shivani Vora',
                      date: '2019.01.01',
                      authorImagePath: 'assets/images/av1.jpg',
                    ),
                    SizedBox(height: 16),
                    // Bài viết 2 (có điều hướng)
                    ArticleTile(
                      imagePath: 'assets/images/ar2.png',
                      title:
                          'Even on Urban Excursions, Finding Mother Nature’s...',
                      author: 'John Doe',
                      date: '2022.06.15',
                      authorImagePath: 'assets/images/av2.jpg',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EvenScreen(),
                          ),
                        );
                      },
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
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 40), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
      ),
    );
  }
}

class ArticleTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String date;
  final String authorImagePath;
  final VoidCallback? onTap; // Thêm sự kiện onTap tùy chọn

  const ArticleTile({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.date,
    required this.authorImagePath,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Sử dụng sự kiện onTap khi bấm vào hình
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hình ảnh
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 145,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              // Tựa đề
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Thông tin tác giả
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(authorImagePath),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    author,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Ngày đăng
              Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
              // Hành động
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.favorite_border, size: 20, color: Colors.grey),
                  SizedBox(width: 8),
                  Icon(Icons.share, size: 20, color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
