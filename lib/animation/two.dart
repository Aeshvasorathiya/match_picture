import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class two extends StatefulWidget {
  const two({super.key});

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(image: AssetImage("myassets/image/match/l1.jpg"),fit: BoxFit.fill,),
      ),
    );
  }
}
