import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          // Center widget để căn giữa toàn bộ nội dung
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Căn giữa theo chiều dọc
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Căn giữa theo chiều ngang
                children: [
                  // Header Gradient
                  Container(
                    width: double
                        .infinity, // Đảm bảo Container bao phủ toàn bộ chiều ngang
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/eye.jpg'),
                          ),
                          Text(
                            'Go Min-si',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Daejeon, Korea',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Avatar hình ảnh
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Các mục ARTICLES, SPECIES, LIKES
                  // Button Row with Navigation
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly, // Phân bố đều các nút
                    children: [
                      Child(
                        label: 'ARTICLES',
                        color: Colors.white, // Màu nền cho nút
                        labelColor: Colors.black, // Màu chữ cho nút
                        onPressed: () {
                          // Hành động khi nhấn nút "IDENTIFY"
                          print('IDENTIFY pressed');
                        },
                      ),
                      Child(
                        label: 'SPECIES',
                        color: Colors.blue, // Màu nền cho nút
                        labelColor: Colors.white, // Màu chữ cho nút
                        onPressed: () {
                          Navigator.pushNamed(context,
                              '/species'); // Điều hướng tới SpeciesScreen
                        },
                      ),
                      Child(
                        label: 'LIKES',
                        color: Colors.white, // Màu nền cho nút
                        labelColor: Colors.black, // Màu chữ cho nút
                        onPressed: () {
                          Navigator.pushNamed(context,
                              '/articles'); // Điều hướng tới ArticlesScreen
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Danh sách các loại cây đã thu thập
                  // Đoạn mã đã chỉnh sửa
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, top: 16.0), // Đẩy chữ sang trái
                    child: Align(
                      alignment: Alignment.centerLeft, // Căn chữ sang bên trái
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Căn chữ theo trục dọc
                        children: [
                          Text(
                            'Your Collected Plants', // Dòng chữ đầu tiên
                            style: TextStyle(
                              fontSize: 18, // Kích thước lớn hơn
                              fontWeight: FontWeight.bold, // In đậm
                            ),
                          ),
                          SizedBox(height: 15), // Khoảng cách giữa các dòng chữ
                          Row(
                            children: [
                              Icon(
                                Icons.local_florist, // Icon bạn muốn hiển thị
                                color: Colors.green, // Màu sắc cho icon
                                size: 20, // Kích thước của icon
                              ),
                              SizedBox(
                                  width: 8), // Khoảng cách giữa icon và chữ
                              Text(
                                'Alagatre Plant', // Dòng chữ thứ hai
                                style: TextStyle(
                                  fontSize: 16, // Kích thước nhỏ hơn
                                  fontWeight: FontWeight.bold, // In đậm
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  2), // Khoảng cách giữa "Alagatre Plants" và ngày tháng
                          Text(
                            '02 . 01 . 2019', // Ngày tháng năm
                            style: TextStyle(
                              fontSize: 14, // Kích thước nhỏ hơn
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  // Hiển thị hình ảnh duy nhất có width và height
                  Container(
                    width: 300, // Width của hình ảnh
                    height: 300, // Height của hình ảnh
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/end.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Plant Name', // Bạn có thể thay 'Plant Name' bằng tên cây nếu có
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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

class Child extends StatelessWidget {
  final String label;
  final Color color;
  final Color labelColor;
  final VoidCallback onPressed;

  const Child({
    required this.label,
    required this.color,
    required this.labelColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Màu nền cho nút
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: labelColor, // Màu chữ cho nút
          fontSize: 16,
        ),
      ),
    );
  }
}
