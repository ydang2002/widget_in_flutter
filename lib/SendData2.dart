import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  final String data;

  ScreenTwo({required this.data});

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  TextEditingController newDataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data from Screen One: ${widget.data}'),
            SizedBox(height: 20),
            TextField(
              controller: newDataController,
              decoration: InputDecoration(labelText: 'Enter new data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trả dữ liệu về ScreenOne
                Navigator.pop(context, newDataController.text);
              },
              child: Text('Send Data Back'),
            ),
          ],
        ),
      ),
    );
  }
}