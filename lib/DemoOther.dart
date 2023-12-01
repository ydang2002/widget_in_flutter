import 'package:add3/SharePreferences1.dart';
import 'package:flutter/material.dart';

import 'SenData1.dart';

class DemoOther extends StatefulWidget {
  const DemoOther({super.key});

  @override
  State<DemoOther> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DemoOther> {
  int _counter = 0;
  final textA = TextEditingController();
  final textB = TextEditingController();
  final sum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SenData(),
                      ));
                },
                child: Text("Routing")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SharePreferrence1(),
                      ));
                },
                child: Text("SharePreferences")),
          ],
        ),
      ),
    );
  }
}