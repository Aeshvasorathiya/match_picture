import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:match_picture/animation/four.dart';
import 'package:match_picture/animation/one.dart';
import 'package:match_picture/animation/three.dart';
import 'package:match_picture/animation/two.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: drawable()));
}

class drawable extends StatefulWidget {
  const drawable({super.key});

  @override
  State<drawable> createState() => _drawableState();
}

class _drawableState extends State<drawable> with TickerProviderStateMixin {
  TabController? tabController;
  int cur_tab = 0;
  List str = ["one", "two", "three", "four","five","six"];
  List<Widget> tab_class = [one(), two(), three(), four(), five(), six()];
  List<Widget> tab_icon = [
    Icon(Icons.home),
    Icon(Icons.alarm),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.camera_alt_outlined),
    Icon(Icons.star),
    Icon(Icons.add_reaction_outlined),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(
      initialIndex: cur_tab,
      animationDuration: Duration(seconds: 1),
      length: str.length,
      vsync: this,
    );
    tabController!.addListener(() {
      cur_tab = tabController!.index;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture:
                    Image(image: AssetImage("myassets/image/match/oso.png")),
                accountName: Text("Jinal"),
                accountEmail: Text("jinal@gmail.com")),
            Expanded(child: ListView.builder(
              itemCount: str.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("${str[index]}"),
                    onTap: () {
                      cur_tab = index;
                      tabController!.animateTo(cur_tab);
                      Navigator.pop(context);
                      setState(() {});
                    },
                  ),
                );
              },
            ))
          ],
        ),
      ),
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) {
            cur_tab = value;
            setState(() {});
          },
          controller: tabController,
          tabs: str.map((e) {
            int ind = str.indexOf(e);
            return Tab(
              child: Text("${e}"),
              icon: tab_icon[ind],
            );
          }).toList(),
        ),
        actions: [
          PopupMenuButton(
            onCanceled: () {},
            onSelected: (value) {
              cur_tab = value;
              tabController!.animateTo(cur_tab);
              setState(() {});
            },
            itemBuilder: (context) => str.map((e) {
              int ind = str.indexOf(e);
              return PopupMenuItem(
                  value: ind,
                  onTap: () {
                    cur_tab = ind;
                    tabController!.animateTo(cur_tab);
                    setState(() {});
                  },
                  child: Text("${str[ind]}"));
            }).toList(),
          )
        ],
        title: Text("Demo"),
      ),
      body: TabBarView(controller: tabController, children: tab_class),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cur_tab,
        onTap: (value) {
          cur_tab = value;
          tabController!.animateTo(value);
          setState(() {});
        },
        items: str.map((e) {
          int ind = str.indexOf(e);
          return BottomNavigationBarItem(
            icon: tab_icon[ind],
            backgroundColor: Colors.blueAccent,
            label: "$e",
          );
        }).toList(),
      ),
    );
  }
}

class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(
          image: AssetImage("myassets/image/match/p2.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(
          image: AssetImage("myassets/image/match/f3.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
