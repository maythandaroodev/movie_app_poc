import 'package:flutter/material.dart';
import 'package:movie_app_poc/item_views/home_screen_item_views/actor_slider.dart';
import 'package:movie_app_poc/screens/home_screen.dart';
import 'package:movie_app_poc/screens/home_screen.dart';
import 'package:movie_app_poc/screens/search_screen.dart';

import 'item_views/actor_detail_screen_item_views/actor_detail_screen_item_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

