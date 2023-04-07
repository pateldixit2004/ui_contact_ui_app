import 'package:flutter/material.dart';

class Afvorite_Screen extends StatefulWidget {
  const Afvorite_Screen({Key? key}) : super(key: key);

  @override
  State<Afvorite_Screen> createState() => _Afvorite_ScreenState();
}

class _Afvorite_ScreenState extends State<Afvorite_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Favorite Contact"),
      ),
      body: Center(child: Column(
          children: [
            Text("Fav"),
            Spacer(),

          ],
        )),
    ),);
  }
}
