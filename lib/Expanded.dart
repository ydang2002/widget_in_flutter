import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded Demo'),
        ),
        body: MyExpanded(),
      ),
    );
  }
}

class MyExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          color: Colors.blue,
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Expanded Widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
      ],
    );
  }
}

//Expanded để bao bọc một Container trong một cột (Column). Khi Column được xây
// dựng, chiều cao của Expanded sẽ mở rộng để chiếm hết không gian còn lại giữa
// hai Container màu xanh và đỏ.

//Expanded có thể được sử dụng trong cả trục ngang (với Row) và trục dọc (với Column).
// Nó giúp các widget con của nó mở rộng để điền vào không gian còn lại, làm cho chúng
// tự động điều chỉnh kích thước để chiếm hết không gian có sẵn
