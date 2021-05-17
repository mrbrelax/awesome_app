import 'package:awesome_app/pages/home/home.dart';
import 'package:awesome_app/pages/login/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          primaryColorLight: Colors.lightBlue,
          accentColor: Colors.blueAccent),
      home: Constants.prefs.getBool("loggedIn") == true
          ? MyHomePage()
          : LoginPage(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        MyHomePage.routeName: (context) => MyHomePage(),
      },
    );
  }
}
