import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IncludeDetails extends StatefulWidget {
  const IncludeDetails({super.key});

  @override
  State<IncludeDetails> createState() => _IncludeDetailsState();
}

class _IncludeDetailsState extends State<IncludeDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: const Icon(Icons.close,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
        elevation: 0,
        title: const Text(
          "Include some details",
          style: TextStyle(
              fontSize: 18,

              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      ),
    );
  }
}
