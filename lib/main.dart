import 'package:facebook_ui/pages/facebook_page.dart';
import 'package:flutter/material.dart';
void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FacebookPage(),
      routes: {
        FacebookPage.id: (context) => const FacebookPage(),
      },
    );
  }
}
