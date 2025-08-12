import 'package:flutter/material.dart';
import 'package:multirole/main.dart';
import 'package:multirole/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("jenab")
        ],
      ),

    );
  }
}
