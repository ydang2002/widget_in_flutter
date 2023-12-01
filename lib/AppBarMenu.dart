import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar with Menu'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                // Xử lý khi một mục được chọn từ menu
                print('Selected: $value');
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello, AppBar with Menu!'),
        ),
      ),
    );
  }
}
