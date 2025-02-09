import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myCurrentIndex = 0;
  List pages = [
    Container(color: Colors.yellow, child: Center(
      child: Text('home page screen',
      style: TextStyle(fontSize: 50, color:Colors.white, fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      ),
    ),),

      Container(color: Colors.red, child: Center(
      child: Text('study pages screen',
      style: TextStyle(fontSize: 50, color:Colors.white, fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      ),
    ),),

      Container(color: Colors.lightGreen, child: Center(
      child: Text('Reading pages screen',
      style: TextStyle(fontSize: 50, color:Colors.white, fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      ),
    ),),

      Container(color: Colors.purple, child: Center(
      child: Text('favorites page screen',
      style: TextStyle(fontSize: 50, color:Colors.white, fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      ),
    ),),

      Container(color: Colors.black, child: Center(
      child: Text('setting pages screen',
      style: TextStyle(fontSize: 50, color:Colors.white, fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      ),
    ),),
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
   body: pages[myCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: myCurrentIndex,
            iconSize: 32,
            type: BottomNavigationBarType.fixed,
            // showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school_outlined), label: 'school'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.auto_stories_outlined), label: 'Books'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outlined), label: 'saved'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: 'settings'),
            ],
            onTap: (myNewCurrent) {
              setState(() {
                myCurrentIndex=myNewCurrent;
              });
              
            },),
      ),
    );
  }
}
