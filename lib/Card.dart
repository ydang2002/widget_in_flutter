import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Demo'),
        ),
        body: MyCard(),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0, // Độ nâng của Card (độ đổ bóng)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0), // Góc bo tròn
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod ex a turpis euismod, vel ultrices velit dignissim.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

//Card để bao bọc một phần nội dung. elevation được sử dụng để thiết lập độ nâng
// của Card, tạo ra hiệu ứng đổ bóng. shape được sử dụng để thiết lập góc bo tròn của Card

//Bên trong Card, chúng ta sử dụng một Padding để tạo khoảng trắng xung quanh
// nội dung và một Column để sắp xếp các phần tử theo chiều dọc. Các phần tử bao
// gồm một tiêu đề và một đoạn văn bản mô tả.