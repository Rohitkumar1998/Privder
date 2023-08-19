import 'package:flutter/material.dart';

class StateFullScreen extends StatefulWidget {
  const StateFullScreen({super.key});

  @override
  State<StateFullScreen> createState() => _StateFullScreenState();
}

class _StateFullScreenState extends State<StateFullScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Container(
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ))
          ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(count);
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
