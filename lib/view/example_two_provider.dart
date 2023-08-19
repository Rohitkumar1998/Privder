import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/provider/exaple_two_provider.dart';

class ExampleTwoProvider extends StatefulWidget {
  const ExampleTwoProvider({super.key});

  @override
  State<ExampleTwoProvider> createState() => _ExampleTwoProviderState();
}

class _ExampleTwoProviderState extends State<ExampleTwoProvider> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ExapleTwo>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Suscribe')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ExapleTwo>(builder: (context, value, child) {
              return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (val) {
                    value.setValue(val);
                  });
            }),
            Consumer<ExapleTwo>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value),
                      ),
                      child: Center(
                        child: Text("Container1"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value),
                      ),
                      child: Center(
                        child: Text("Container2"),
                      ),
                    ),
                  )
                ],
              );
            })
          ]),
    );
  }
}
