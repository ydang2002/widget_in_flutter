import 'package:flutter/material.dart';



class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Demo'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        20,
        (index) => ListTile(
          title: Text('Item $index'),
          subtitle: Text('Subtitle $index'),
          leading: Icon(Icons.star),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Xử lý khi một item được nhấp vào
            print('Tapped on item $index');
          },
        ),
      ),
    );
  }
}