import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(image: AssetImage("myassets/image/match/l5.jpeg"),fit: BoxFit.fill,),
      ),
    );
  }
}
