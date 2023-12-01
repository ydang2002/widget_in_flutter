import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharePreferences1.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final SharedPreferencesStorage sharedPreferencesStorage = SharedPreferencesStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: FutureBuilder<String?>(
        future: sharedPreferencesStorage.loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Data from Home Screen: ${snapshot.data}'),
                ],
              ),
            );
          }

          return Center(
            child: Text('No data available'),
          );
        },
      ),
    );
  }
}
