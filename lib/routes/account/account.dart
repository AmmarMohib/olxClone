import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
              CircleAvatar(
                child: Icon(Icons.account_circle_outlined, color: Color.fromRGBO(0, 47, 52, 1.0),size: 70),
                backgroundColor: Color.fromRGBO(240,240,230, 1.0),
                radius: 50,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Log in",style: TextStyle(color: Color.fromRGBO(0, 47, 52, 1.0), fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 3,),
                  Text("Log in to your account", style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 47, 52, 1.0))),
                ],
              )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
