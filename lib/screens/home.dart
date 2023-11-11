import 'package:ajio/screens/account.dart';
import 'package:ajio/screens/categories.dart';
import 'package:ajio/screens/explore.dart';
import 'package:ajio/screens/home_tab.dart';
import 'package:ajio/screens/trndin.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currendIndex = 0;
  final List _tabs = [
    HomeTab(),
    Explore(),
    trnd(),
    Categories(),
    account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[currendIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: currendIndex,
        onTap: (int index) {
          setState(() {
            currendIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:
                Icon(Icons.home,),
            label: "Switch Stores",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store, color: Color.fromARGB(200, 0, 0, 0)),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_axis, color: Color.fromARGB(200, 0, 0, 0)),
            label: "TRNDin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp,
                color: Color.fromARGB(200, 0, 0, 0)),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined,
                color: Color.fromARGB(200, 0, 0, 0)),
            label: "Account",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 10,
      ),
    );
  }
}