import 'package:match_picture/config.dart';
import 'package:match_picture/match2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';


void main() {

  runApp(MaterialApp(
    home: first(),
    debugShowCheckedModeBanner: false,
  ));
}

class first extends StatefulWidget {
  // const first({super.key});
  static SharedPreferences? prefs;

  // static SharedPreferences? prefs;

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<dynamic> t = [
    -0.1,
    0.1,
    0.2,
    0.2,
    -0.1,
    -0.1,
    -0.2,
    0.1,
    -0.1,
    -0.1,
    0.1,
    0.2
  ];
  List name = ["NO TIME LIMITS", "NORMAL", "HARD"];
  bool temp1 = false;
  bool temp2 = false;
  bool temp3 = false;

  // int index=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  get() async {
    first.prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SELECT MODE"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.volume_up_sharp)),
          IconButton(
              onPressed: () {
                // print("your item is edit");
                showDialog(
                  barrierColor: Colors.transparent,
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      alignment: Alignment.topRight,
                      backgroundColor: Colors.white70,
                      actions: [
                        TextButton(
                          style: ButtonStyle(alignment: Alignment.topLeft),
                          onPressed: () {
                            print("your item is edit");
                          },
                          child: Text(
                            "SHARE",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(alignment: Alignment.topRight),
                          onPressed: () {
                            print("your item is edit");
                          },
                          child: Text(
                            "\nMORE GAMES",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(alignment: Alignment.topRight),
                          onPressed: () {
                            print("your item is edit");
                          },
                          child: Text(
                            "\nPRIVACY POLICY",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                      scrollable: true,
                    );
                  },
                );
              },
              icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.teal.shade50,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  // color: Colors.red,
                  margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: record.l.length,
                    itemBuilder: (context, index) {
                      return Transform(
                        transform: Matrix4.rotationZ(t[index]),
                        child: Container(
                          margin: EdgeInsets.all(15),
                          // height: 80,
                          // width: 80,
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black87, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("${record.l[index]}")),
                            // borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        // height: double.infinity,
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(100, 140, 100, 20),
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.teal,
                              width: 4),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTapUp: (details) {
                                  temp1 = false;
                                  setState(() {});
                                },
                                onTapCancel: () {
                                  temp1 = false;
                                  setState(() {});
                                },
                                onTapDown: (details) {
                                  temp1 = true;
                                  setState(() {});
                                },
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        // int index=0;
                                        return home();
                                      },
                                    ));
                                  },
                                  child: Container(
                                    // height: double.infinity,
                                    width: double.infinity,
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                                    color: (temp1 == true)
                                        ? Colors.teal.shade900
                                        : Colors.teal,
                                    alignment: Alignment.center,
                                    child: Text("${name[0]}",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTapUp: (details) {
                                  temp2 = false;
                                  setState(() {});
                                },
                                onTapCancel: () {
                                  temp2 = false;
                                  setState(() {});
                                },
                                onTapDown: (details) {
                                  temp2 = true;
                                  setState(() {});
                                },
                                child: Container(
                                  // height: double.infinity,
                                  width: double.infinity,
                                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  color: (temp2 == true)
                                      ? Colors.teal.shade900
                                      : Colors.teal,
                                  alignment: Alignment.center,
                                  child: Text("${name[1]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTapUp: (details) {
                                  temp3 = false;
                                  setState(() {});
                                },
                                onTapCancel: () {
                                  temp3 = false;
                                  setState(() {});
                                },
                                onTapDown: (details) {
                                  temp3 = true;
                                  setState(() {});
                                },
                                child: Container(
                                  // height: double.infinity,
                                  width: double.infinity,
                                  margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  color: (temp3 == true)
                                      ? Colors.teal.shade900
                                      : Colors.teal,
                                  alignment: Alignment.center,
                                  child: Text("${name[2]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(140, 30, 140, 30),
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.teal,
                              width: 4),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.teal,
                                alignment: Alignment.center,
                                child: Text("REMOVE ADS",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // height: double.infinity,
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(70, 20, 70, 30),
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.teal,
                              width: 4),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                // width: double.infinity,
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.teal,
                                alignment: Alignment.center,
                                child: Text("SHARE",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                // width: double.infinity,
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.teal,
                                alignment: Alignment.center,
                                child: Text("MORE GAMES",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
