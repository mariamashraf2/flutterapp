import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/page1.dart';
import 'package:flutter_application_1/views/screens/page2.dart';
import 'package:flutter_application_1/views/screens/page3.dart';

// ignore: camel_case_types, must_be_immutable
class homescreen extends StatefulWidget {
  String email;
  homescreen({super.key, required this.email});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int currrntIndex = 0;
  List<Widget> pages = [
    page1(),
    page2(),
    page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: pages[currrntIndex],
      // body: Center(child: Text(widget.email)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currrntIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "page1"),
          BottomNavigationBarItem(icon: Icon(Icons.security), label: "page2"),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "page3")
        ],
        onTap: (value) {
          currrntIndex = value;
          setState(() {});
          print(value);
        },
      ),
    );
  }
}
