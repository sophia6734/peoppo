import 'package:flutter/material.dart';
import 'package:peoppo/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: LoginScreen()),
    );
  }
}
