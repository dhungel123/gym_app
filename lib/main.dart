
import 'package:flutter/material.dart';
import 'package:gym_app/feature/store_page/presentation/first_screen.dart';

import 'feature/store_page/presentation/store_page.dart';

void main(){
  runApp(GymApp());
}
class GymApp extends StatelessWidget{
   const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );

  }
}