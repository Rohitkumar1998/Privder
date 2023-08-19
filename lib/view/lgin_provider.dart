import 'package:app/provider/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginProviderScreen extends StatefulWidget {
  const LoginProviderScreen({super.key});

  @override
  State<LoginProviderScreen> createState() => _LoginProviderScreenState();
}

class _LoginProviderScreenState extends State<LoginProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of(context, listen: true);
    TextEditingController _emailContreoller = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Login ")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailContreoller,
              decoration: InputDecoration(hintText: "enter Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(hintText: "enter Password"),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                authProvider.login(_emailContreoller.text.toString(),
                    _passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: authProvider.loading
                    ? CircularProgressIndicator()
                    : Text('Login'),
              ),
            )
          ]),
    );
  }
}
