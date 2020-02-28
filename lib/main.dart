import 'package:flutter/material.dart';
import 'package:layouts/pages/tabs.page.dart';
import 'package:layouts/themes/light.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: DefaultTabController(length: 3, child: TabsPage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
