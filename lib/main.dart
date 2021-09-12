import 'package:flutter/material.dart';
import 'package:test_chat_app/screens/home_page.dart';
import 'package:test_chat_app/screens/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Facebook Apps',
      debugShowCheckedModeBanner: false,
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/home',
      // initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => const HomePage(),
      },
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        // primaryColor: Colors.lightBlue[800],
        primaryColor: Colors.pink[800],
        // Define the default font family.
        // fontFamily: 'Georgia',

        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(
            fontSize: 25.0,
          ),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
    ),
  );
}
