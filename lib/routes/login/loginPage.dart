// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_button.dart';
import 'package:olx_clone/routes/home/homepage.dart';
import 'package:olx_clone/routes/login/terms_and_conditions.dart';
import 'package:olx_clone/services/login/google.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/auth-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  check(context) {
    var currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      Future.delayed(Duration.zero, () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    check(context);
    // else {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => LoginPage()));
    // }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              elevation: 0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Image(
                      image: AssetImage('assets/images/olx_logo.png'),
                      width: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "welcome to olx".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.0),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "The trusted community of buyers and sellers",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(5, 51, 56, 1),
                        letterSpacing: 1.0,
                      ),
                    ),
                    Container(
                      height: 25,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/google.png',
                        onTap: () {
                          signIn(context);
                        },
                        text: "Continue with google"),
                    Container(
                      height: 7,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/facebook_logo.webp',
                        onTap: () {},
                        text: 'Continue with facebook'),
                    Container(
                      height: 7,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/mail_logo.png',
                        onTap: () {},
                        text: 'Continue with email'),
                    Container(
                      height: 7,
                    ),
                    SignUpButton(
                      
                        imageUrl: 'assets/images/phone_logo.png',
                        onTap: () {
                          // print('hello');
                        },
                        text: 'Continue with phone'),
                    const SizedBox(
                      height: 230,
                    ),
                    const Text(
                      "If you continue, you are accepting",
                      style: TextStyle(color: Color.fromRGBO(5, 51, 56, 1)),
                    ),
                    GestureDetector(
                      child: const Text("OLX Terms and Conditions",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(5, 51, 56, 1))),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TAC()),
                        );
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
