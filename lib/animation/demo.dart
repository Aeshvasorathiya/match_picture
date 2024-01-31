import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  double h = 200;
  double w = 200;
  double op = 0.6;
  bool t = false;
  Color c = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedOpacity(
            opacity: op,
            duration: Duration(seconds: 1),
            child: AnimatedContainer(
              duration: Duration(seconds: 5),
              height: h,
              width: w,
              color: c,
            ),
          ),
          ElevatedButton(onPressed: () {
            if(t)
              {
                h = 100;
                w = 100;
                c = Colors.yellow;
              }
            else
              {
                h = 200;
                w = 200;
                c = Colors.red;
              }
            t = !t;
            setState(() {});
          }, child: Text("submit")),
        ],
      ),
    );
  }
}
