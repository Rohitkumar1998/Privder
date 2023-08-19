import 'package:app/Screen/statefulWidget.dart';
import 'package:app/Screen/whyProvider.dart';
import 'package:app/provider/count_provider.dart';
import 'package:app/provider/darkThemProvider.dart';
import 'package:app/provider/favourite_provider.dart';
import 'package:app/provider/login.dart';
import 'package:app/view/count_example.dart';
import 'package:app/view/dark_theme.dart';
import 'package:app/view/example_two_provider.dart';
import 'package:app/view/faverouti/faveScreen.dart';
import 'package:app/view/lgin_provider.dart';
import 'package:app/view/stateless.dart';
import 'package:flutter/material.dart';
import 'package:app/Screen/homeScreen.dart';
import 'package:provider/provider.dart';
import 'package:app/provider/exaple_two_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final themChanger = Provider.of<DarkThemeProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FavoriteProvider(),
        ),
        ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
        ChangeNotifierProvider(create: (_) => LogProvider())
      ],

      //  ExapleTwo(),
      child: Builder(builder: (BuildContext context) {
        final themChanger = Provider.of<DarkThemeProvider>(context);
        return MaterialApp(
            title: 'Flutter Demo',
            themeMode: Provider.of<DarkThemeProvider>(context).themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.yellow,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.red,
                primaryColor: Colors.yellow),
            home:
                // LoginProviderScreen()
                StatesstoStatefull()
            //  DarkTheme()
            // FavouriteScreen()
            // ExampleTwoProvider()
            // CountExampleProvider()
            // WhyProviderScreen()
            // StateFullScreen()
            );
      }),
    );
  }
}
