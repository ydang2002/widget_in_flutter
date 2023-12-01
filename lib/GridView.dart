import 'package:flutter/material.dart';

class GirdView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Demo'),
        ),
        body: MyGridView(),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Số cột trong lưới
        crossAxisSpacing: 8.0, // Khoảng cách giữa các cột
        mainAxisSpacing: 8.0, // Khoảng cách giữa các dòng
      ),
      itemCount: 20, // Số lượng mục trong lưới
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

//sử dụng widget GridView.builder để tạo một lưới. Thuộc tính gridDelegate được
// sử dụng để cấu hình cách các ô con trong lưới sắp xếp.

//SliverGridDelegateWithFixedCrossAxisCount để xác định số cột trong lưới
// (crossAxisCount). Các thuộc tính khác như crossAxisSpacing và mainAxisSpacing
// được sử dụng để thiết lập khoảng cách giữa các cột và dòng.

//Hàm itemBuilder xác định cách mỗi ô trong lưới được xây dựng. Trong ví dụ này,
// chúng ta tạo một Container mỗi khi xây dựng ô và hiển thị văn bản bên trong
// để chỉ ra vị trí của ô trong lưới.
