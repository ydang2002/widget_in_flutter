import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row & Column'),
        ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is a Column'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,//để đảm bảo rằng các container nằm ở hai đầu của Row và có khoảng cách đều giữa chúng.
              children: [
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('End of Column'),
          ],
        ),
      )
    );
  }
}
// sử dụng một widget Column để chứa nhiều widget con theo chiều dọc.
// Trong đó có một Text widget, một SizedBox để tạo khoảng cách, và sau đó là một
// widget Row. Trong Row, chúng ta sử dụng ba container có màu khác nhau để minh họa
// cách sắp xếp theo hàng ngang. mainAxisAlignment trong Row được thiết lập thành
// MainAxisAlignment.spaceBetween để đảm bảo rằng các container nằm ở hai đầu của
// Row và có khoảng cách đều giữa chúng.
