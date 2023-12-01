import 'package:flutter/material.dart';

class Routing2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nhận dữ liệu từ màn hình trước
    final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data from Home Screen: $data'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trở về màn hình trước và trả về dữ liệu mới
                Navigator.pop(context, 'New Data from Second Screen');
              },
              child: Text('Send New Data Back'),
            ),
          ],
        ),
      ),
    );
  }
}
