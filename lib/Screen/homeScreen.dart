import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int x = 0;
  @override
  Widget build(BuildContext context) {
    print(build);
    return Scaffold(
      appBar: AppBar(title: Text("provider tutorial")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text(
                  x.toString(),
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          // setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
