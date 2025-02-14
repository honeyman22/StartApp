import 'package:flutter/material.dart';
import 'package:tutatrials/features/coffeeshop/presentation/gettingstarted/mainhome.dart';
import 'package:tutatrials/features/coffeeshop/presentation/home/index.dart';
import 'package:tutatrials/features/home/presentation/getstarted.dart';
import 'package:tutatrials/features/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => GetStartedPage(),
        '/home': (context) => HomePage(),
        "/coffeehome": (context) => CoffeeshopGettingStarted(),
        "/coffee/home": (context) => CoffeeMainHome()
      },
    );
  }
}
