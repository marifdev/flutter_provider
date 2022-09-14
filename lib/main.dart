import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/Counter.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: const MyHomePage(
          title: 'Flutter Demo',
        ),
        routes: {
          '/second': (context) => const SecondPage(
                title: 'Second Page',
              ),
        },
      ),
    );
  }
}
