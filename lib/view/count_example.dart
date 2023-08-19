import 'dart:async';

import 'package:app/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountExampleProvider extends StatefulWidget {
  const CountExampleProvider({super.key});

  @override
  State<CountExampleProvider> createState() => _CountExampleProviderState();
}

class _CountExampleProviderState extends State<CountExampleProvider> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final contProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      contProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Consumer<CountProvider>(
              builder: (context, value, child) {
                print('provder for rebuild text only');
                return Text(
                  value.count.toString(),
                  style: TextStyle(fontSize: 50),
                );
              },
            ))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
