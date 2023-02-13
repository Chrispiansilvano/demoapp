import 'package:flutter/material.dart';
import 'package:demo/homepage/navbar.dart';
import 'package:demo/homepage/home.dart';
import 'package:demo/homepage/profile.dart';
import 'package:demo/homepage/settings.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Settings(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            "Demo",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          child: _widgetOptions.elementAt(currentIndex),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.purple,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: const TextStyle(color: Colors.yellow),
                ),
          ), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Profile"),
            ],
            currentIndex: currentIndex,
            onTap: ((int index) {
              setState(() {
                currentIndex = index;
              });
            }),
            backgroundColor: Colors.white,
            // fixedColor: Colors.purple,
            selectedItemColor: Colors.purple,
          ),
        ),
      ),
    );
  }
}
