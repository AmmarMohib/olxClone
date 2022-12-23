import 'package:flutter/material.dart';

class Expired extends StatefulWidget {
  const Expired({super.key});

  @override
  State<Expired> createState() => _ExpiredState();
}

class _ExpiredState extends State<Expired> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Column(
        children: [
          SizedBox(height: 50,),
          Image(image: AssetImage('assets/images/nothingIcon.png')),
          SizedBox(height: 30,),
          Text("Nothing here...", style: TextStyle(color: Color.fromRGBO(12, 56, 61, 1.0), fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("You don't have any expired orders", style: TextStyle(color: Color.fromRGBO(116, 141, 144, 1.0)),)
        ],
      ),)),
    );;
  }
}
