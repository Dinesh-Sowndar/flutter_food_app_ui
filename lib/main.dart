import 'package:flutter/material.dart';
import 'package:food_app/pages/food_list/page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Averta",
        primaryColor: const Color(0xffffc529),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfffe724c)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FoodListPage(),
    );
  }
}
