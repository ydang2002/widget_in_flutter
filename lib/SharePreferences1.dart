import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharePreferences2.dart';

void main() {
  runApp(SharePreferrence1());
}

class SharePreferrence1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController dataController = TextEditingController();
  final SharedPreferencesStorage sharedPreferencesStorage = SharedPreferencesStorage();

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
              onPressed: () async {
                // Lưu dữ liệu vào SharedPreferences
                await sharedPreferencesStorage.saveData(dataController.text);

                // Chuyển đến màn hình thứ hai
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Go to Second Screen'),
            ),
            // ElevatedButton(
            //     onPressed: () async {
            //       await sharedPreferencesStorage.saveData(dataController.text);
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => SecondScreen(),
            //           ));
            //     },
            //     child: Text("Go to Second Screen")),
          ],
        ),
      ),
    );
  }
}

class SharedPreferencesStorage {
  static const String _key = 'saved_data';

  Future<void> saveData(String data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, data);
  }

  Future<String?> loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key);
  }
}


//SharedPreferencesStorage để quản lý lưu trữ và đọc dữ liệu từ SharedPreferences.
// Màn hình thứ nhất (HomeScreen) sử dụng nó để lưu trữ dữ liệu nhập từ TextField,
// sau đó chuyển sang màn hình thứ hai (SecondScreen). Trong SecondScreen, chúng ta
// sử dụng FutureBuilder để đọc dữ liệu từ SharedPreferences và hiển thị nó.
