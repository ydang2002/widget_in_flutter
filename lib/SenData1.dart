import 'package:flutter/material.dart';

import 'SendData2.dart';

void main() {
  runApp(SenData());
}

class SenData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: dataController,
              decoration: InputDecoration(labelText: 'Enter data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Chuyển dữ liệu sang ScreenTwo và đợi kết quả
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenTwo(data: dataController.text),
                  ),
                );

                // Nhận dữ liệu trả về từ ScreenTwo
                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Received data from Screen Two: $result'),
                    ),
                  );
                }
              },
              child: Text('Go to Screen Two'),
            ),
          ],
        ),
      ),
    );
  }
}

//ScreenOne chứa một TextField để nhập dữ liệu và một nút để chuyển đến ScreenTwo.
// Khi người dùng nhấp vào nút, dữ liệu được chuyển sang ScreenTwo và kết quả mới được trả về.

//ScreenTwo hiển thị dữ liệu từ ScreenOne và cung cấp một TextField để
// người dùng nhập dữ liệu mới. Khi người dùng nhấp vào nút, dữ liệu mới được
// trả về ScreenOne. Trên ScreenOne, chúng ta nhận được dữ liệu trả về và hiển
// thị thông báo thông qua SnackBar.