import 'package:ass3/pages/home.dart';
import 'package:ass3/pages/profile.dart';
import 'package:ass3/pages/search.dart';
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
  int selecterindex = 0;
  final List = [home(), search(), profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Creative app',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        body: List[selecterindex],
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        currentIndex: selecterindex,
        onTap: (index){
          setState(() {
            selecterindex=index;
          });
        },),
      ),
    );
  }
}
