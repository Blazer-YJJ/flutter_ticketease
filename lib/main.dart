import 'package:flutter/material.dart';
import 'package:flutter_ticketease/screens/bottom_bar.dart';
import 'package:flutter_ticketease/utils/app_style.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}

