import 'package:flutter/material.dart';

class SpeciesScreen extends StatelessWidget {
  const SpeciesScreen({super.key});

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
                // Danh sách các loài
                ListView(
                  shrinkWrap: true, // Important to prevent overflow issues
                  children: [
                    const SectionHeader(title: 'C'),
                    SpeciesTile(
                      name: 'CACTUS',
                      onTap: () {
                        // Điều hướng sang màn hình CactusScreen
                        Navigator.pushNamed(context, '/cactus');
                      },
                    ),
                    const SpeciesTile(name: 'CISTUS'),
                    const SpeciesTile(name: 'CAESALPINIA'),
                    const SpeciesTile(name: 'CINNAMOMUM'),
                    const SpeciesTile(name: 'CIRSIUM'),
                    const SpeciesTile(name: 'CISSUS'),
                    const SectionHeader(title: 'D'),
                    const SpeciesTile(name: 'DIGITALIS'),
                    const SpeciesTile(name: 'DAHLIA'),
                    const SpeciesTile(name: 'DIERAMA'),
                    const SpeciesTile(name: 'DAPHNE'),
                    const SectionHeader(title: 'E'),
                    const SpeciesTile(name: 'ECHINACEA'),
                    const SpeciesTile(name: 'ECHINOPS'),
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
        currentIndex: 0, // Tab hiện tại
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

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }
}

class SpeciesTile extends StatelessWidget {
  final String name;
  final VoidCallback? onTap;

  const SpeciesTile({required this.name, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontSize: 16),
      ),
      onTap: onTap ??
          () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Selected: $name')),
            );
          },
    );
  }
}
