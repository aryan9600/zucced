import 'package:flutter/material.dart';
import 'package:zucced/chat_page.dart';
import 'package:zucced/people_page.dart';
import 'search_page.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
       // '/': (context) => LoginPage(),
        '/chat': (context) => ChatPage(),
        '/people': (context) => PeoplePage(),
        '/search': (context) => SearchListExample()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
