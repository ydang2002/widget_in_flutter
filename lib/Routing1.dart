import 'package:add3/Routing2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Routing1());
}

class Routing1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => Routing2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
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
              onPressed: () {
                // Chuyển đến màn hình thứ hai
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: dataController.text,
                );
              },
              child: Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

//initialRoute để chỉ định màn hình mặc định khi ứng dụng được khởi chạy.
// Chúng ta cũng định nghĩa routes để ánh xạ các đường dẫn tới các widget màn hình tương ứng.
//
// Trong Routing1, khi người dùng nhập dữ liệu và nhấp nút, chúng ta sử dụng Navigator.pushNamed
// để chuyển đến màn hình thứ hai và truyền dữ liệu qua tham số arguments.
//
// Trong Routing, chúng ta nhận dữ liệu từ màn hình trước thông qua ModalRoute.of(context)?.settings.arguments
// và hiển thị nó. Khi người dùng nhấp nút, chúng ta sử dụng Navigator.pop để trở về màn hình trước
// và trả về dữ liệu mới.