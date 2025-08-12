import 'package:flutter/material.dart';
class Splaish extends StatefulWidget {
  const Splaish({super.key});

  @override
  State<Splaish> createState() => _SplaishState();
}

class _SplaishState extends State<Splaish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image: NetworkImage("https://www.pexels.com/video/origami-paper-boat-on-textured-background-32572444/")),
    ) ;
  }
}
