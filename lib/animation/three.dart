import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class three extends StatefulWidget {
  const three({super.key});

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(image: AssetImage("myassets/image/match/g1.webp"),fit: BoxFit.fill,),
      ),
    );
  }
}
