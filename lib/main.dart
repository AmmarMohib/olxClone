import 'package:flutter/material.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Olx clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
      ),
      // ThemeData(
      //   primaryColor: Colors.white,
      //   textTheme: TextTheme(
      //     headline1: (TextStyle(backgroundColor: Colors.green))
      //   ),
      // ),
      home: const LoginPage(),
    );
  }
}