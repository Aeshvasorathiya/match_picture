import 'package:flutter/material.dart';
import 'package:match_picture/animation/animation1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: animation(),
  ));
}

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  List img = [
    "d3.jpg",
    "f3.jpg",
    "f5.jpg",
    "l4.jpg",
    "l6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Animation"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: img.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, animation1(second(img[index])));
        },
        child: Hero(
          tag: "${img[index]}",
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset("img/${img[index]}"),
          ),
        ),
      );
        },
      ),
    );
  }
}

class second extends StatefulWidget {
  String img;

  second(this.img);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Hero(
          tag: "${widget.img}",
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset("img/${widget.img}"),
          )),
    );
  }
}
