import 'package:chat_vibe/Config/PagePath.dart';
import 'package:chat_vibe/Config/Theme.dart';
import 'package:chat_vibe/Pages/SplacePgae/SplacePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Vibe',
      theme:  ThemeData.dark(),
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: SplacePage(),
    );
  }
}
