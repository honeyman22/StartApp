import 'package:flutter/material.dart';
import 'package:tutatrials/features/coffeeshop/presentation/home/banner.dart';
import 'package:tutatrials/features/coffeeshop/presentation/home/categorylist.dart';

class CoffeeMainHome extends StatelessWidget {
  const CoffeeMainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [HomeBanner(), CategoryList()],
    )));
  }
}
