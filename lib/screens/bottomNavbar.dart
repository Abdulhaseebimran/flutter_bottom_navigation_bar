import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _SelectedIndex = 0;
  void _navigatedBottombar (int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }
  final List<Widget> _pages = [
         const  Center(
        child: Text("Home Page",
        style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.bold
        ),),
      ),const Center(
        child: Text("Message Page",
        style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.bold
        ),),
      ),const Center(
        child: Text("Account Page",
        style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.bold
        ),),
      ),const Center(
        child: Text("Setting Page",
        style: TextStyle(
          fontSize: 50, fontWeight: FontWeight.bold
        ),),
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedIndex,
        onTap: _navigatedBottombar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
             BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ]),
    );
  }
}