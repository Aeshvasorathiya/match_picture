import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(image: AssetImage("myassets/image/match/d4.webp"),fit: BoxFit.fill,),
      ),
    );
  }
}
