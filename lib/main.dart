// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/routes/home/homepage.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      // builder: (context, child) {
      //   return ScrollConfiguration(
      //     behavior: MyBehavior(),
      //     child: child,
      //   );
      // },
      debugShowCheckedModeBanner: false,
      title: 'Olx clone',
      theme: ThemeData(
        primaryColor: Colors.white,
        // shadowColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(
            // primarySwatch: Colors.white,
            ),
      ),
      // ThemeData(
      //   primaryColor: Colors.white,
      //   textTheme: TextTheme(
      //     headline1: (TextStyle(backgroundColor: Colors.green))
      //   ),
      // ),
      home: (const LoginPage()),
    );
  }
}
