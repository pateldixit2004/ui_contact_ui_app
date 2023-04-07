import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_frame/Home_screen/Home_.dart';
import 'package:photo_frame/Home_screen/add_con.dart';
import 'package:photo_frame/Home_screen/favorite.dart';
import 'package:photo_frame/Home_screen/profile%20_screen.dart';
import 'package:photo_frame/Home_screen/recent.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home_(),
        'favorite':(context)=>Afvorite_Screen(),
        'Recent':(context)=>Recent_Screen(),
        'add':(context)=>Add_Con(),
        'profile':(context)=>Profile_Screen(),
      },
    )
  );
}
