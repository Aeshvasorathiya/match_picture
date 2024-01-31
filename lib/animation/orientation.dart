import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: orientation(),
  ));
}

class orientation extends StatefulWidget {
  const orientation({super.key});

  @override
  State<orientation> createState() => _orientationState();
}

class _orientationState extends State<orientation> {
  bool t = true;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation)
      {
        print(orientation);
        if (Orientation.portrait == orientation) {
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
              overlays: SystemUiOverlay.values);

          t = true;
        }
        else
        {
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
              overlays: [SystemUiOverlay.bottom]);
          t = false;
        }
        return Scaffold(
            appBar: (t) ? AppBar() : null,
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (t) ? 3 : 5,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  );
                },));
      },
    );
  }
}
