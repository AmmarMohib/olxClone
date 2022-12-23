import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text("You haven't liked anything yet", style: TextStyle(color: Color.fromRGBO(33, 71, 76, 1.0), fontSize: 18, fontWeight: FontWeight.w800))),
      ),
    );
  }
}
