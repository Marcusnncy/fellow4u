import 'package:flutter/material.dart';

class CircleScreen extends StatelessWidget {
  const CircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Nội dung chính của màn hình
          Column(
            children: [
              // Image section
              Container(
                height: 281,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/circle.png'), // Hình ảnh của Spinach
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Detail section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      // Category chips
                      Row(
                        children: [
                          CategoryChip(label: 'DANGER'),
                          const SizedBox(width: 10),
                          CategoryChip(label: 'DECORATION'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Plant name and rating
                      const Text(
                        'Circle Cactus',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star_half, color: Colors.yellow, size: 20),
                          SizedBox(width: 8),
                          Text('4.5', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Kingdom and Family displayed side by side
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Kingdom',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text('Plantae', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          const SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Family',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text('Cactaceae', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Description section
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      // Full description with proper formatting and wrapping
                      const Text(
                        'The word "cactus" derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name originally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                        softWrap: true, // Ensures text wraps correctly
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Back button on top left
          Positioned(
            top: 260,
            right: 30,
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 28,
              child: const Icon(Icons.favorite, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
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

// Widget hiển thị các danh mục
class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.green,
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}
