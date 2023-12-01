import 'package:flutter/material.dart';

class DemoWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap Demo'),
        ),
        body: MyWrap(),
      ),
    );
  }
}

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // Khoảng cách giữa các widget con theo chiều ngang
      runSpacing: 8.0, // Khoảng cách giữa các dòng theo chiều dọc
      children: List.generate(
        15,
        (index) => Container(
          color: Colors.blue,
          width: 80,
          height: 80,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

//Wrap để đặt các widget con vào vị trí theo hàng và cột. Thuộc tính spacing
// được sử dụng để thiết lập khoảng cách giữa các widget con theo chiều ngang
// và runSpacing để thiết lập khoảng cách giữa các dòng theo chiều dọc.

//List.generate để tạo một danh sách các Container với nền màu xanh và văn bản
// bên trong. Widget con này sau đó được đặt vào Wrap và tự động dàn thành các hàng và cột.
