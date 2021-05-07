import 'package:flutter/material.dart';
import 'package:prototipo_lista_feed/pages/listview_builder_page.dart';
import 'package:prototipo_lista_feed/pages/pageview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ListViewBuilderPage(),
      home: PageViewPage(),
    );
  }
}
