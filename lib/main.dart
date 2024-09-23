import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:life_cycle_app/life_cycle_screen.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeCycleScreen(),
    );
  }
}
