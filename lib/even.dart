import 'package:flutter/material.dart';

class EvenScreen extends StatelessWidget {
  const EvenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Nội dung chính của màn hình
          Column(
            children: [
              // Phần hình ảnh bài viết
              Container(
                height: 281,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/ar2.png', // Đường dẫn hình ảnh
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context); // Quay lại màn hình trước
                        },
                      ),
                    ),
                  ),
                ),
              ),

              // Phần thông tin chi tiết
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        // Các thẻ danh mục
                        Row(
                          children: [
                            CategoryChip(label: 'VEGETABLES'),
                            const SizedBox(width: 8),
                            CategoryChip(label: 'GARDEN'),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Tiêu đề bài viết
                        const Text(
                          'Even on Urban Excursions, Finding Mother Nature\'s Charms',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Thông tin tác giả
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/av3.jpg'),
                              radius: 18,
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Shylla Monic',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  '2019.01.01',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text('+ Follow'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Văn bản mô tả
                        const Text(
                          'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nature should and can fit into that city getaway, according to Kally Ellis, the founder of the London florist company McQueens and the in-house florist for the Maybourne Hotel Group. “Connecting with the natural world wherever you are is a great antidote to jet lag and travel tiredness,” she said. “Plants and flowers can refresh us, boost our energy and help us recalibrate.”',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Nút yêu thích (floating heart)
          Positioned(
            top: 260,
            right: 30,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 28,
              child: const Icon(Icons.favorite, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),

      // Thanh điều hướng dưới cùng
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2DDA93),
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

// Widget hiển thị các danh mục (thẻ)
class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue.shade100,
      labelStyle: const TextStyle(color: Colors.blue),
    );
  }
}
