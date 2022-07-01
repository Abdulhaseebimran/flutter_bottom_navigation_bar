import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            gap: 8,
           padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(icon: 
              Icons.home, text: "Home",),
              GButton(icon: 
              Icons.favorite_border, text: "Likes",),
              GButton(icon: 
              Icons.search ,text: "Search",),
              GButton(icon: 
              Icons.settings, text: "Setting",),
            ]),
        ),
      ),
    );
  }
}