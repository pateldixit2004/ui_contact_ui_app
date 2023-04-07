import 'package:flutter/material.dart';

class Recent_Screen extends StatefulWidget {
  const Recent_Screen({Key? key}) : super(key: key);

  @override
  State<Recent_Screen> createState() => _Recent_ScreenState();
}

class _Recent_ScreenState extends State<Recent_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Recent"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Recent"),
      ),
    ),);
  }
}
