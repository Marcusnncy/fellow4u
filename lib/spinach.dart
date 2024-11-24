import 'package:flutter/material.dart';

// SpinachScreen, màn hình chi tiết khi chuyển tới
class SpinachScreen extends StatelessWidget {
  const SpinachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Image section
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/tree2.png'), // Hình ảnh của Spinach
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
                      // Category chips with proper spacing
                      Row(
                        children: [
                          CategoryChip(label: 'VEGETABLES'),
                          const SizedBox(width: 10),
                          CategoryChip(label: 'HEALTHY'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Plant name and rating
                      const Text(
                        'Spinach',
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
                      // Kingdom and Family displayed side by side with a space between
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Align to the start
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
                          const SizedBox(
                              width: 20), // Added space between the two columns
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Family',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text('Amaranthaceae',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                          height: 8), // Minimal space after Kingdom and Family
                      const Text('Description',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const Text(
                        'Spinach is thought to have originated in ancient Persia (modern Iran and neighboring countries). '
                        'It is not known by whom, or when, spinach was introduced to India, but the plant was subsequently '
                        'introduced to ancient China, where it was known as "Persian vegetable".',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Heart icon positioned at top-right
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

// CategoryChip Widget for tags like 'VEGETABLES' or 'HEALTHY'
class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.green.shade800,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
