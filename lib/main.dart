import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/stateful',
        routes: {'/stateful': (_) => CounterPage()});
  }
}
