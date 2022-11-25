import 'package:flutter/material.dart';

class Active extends StatefulWidget {
  const Active({super.key});

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
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
          Text("You don't have any active orders", style: TextStyle(color: Color.fromRGBO(116, 141, 144, 1.0)),)
        ],
      ),)),
    );
  }
}