import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';

class Mobiles extends StatefulWidget {

  const Mobiles({Key? key}) : super(key: key);

  @override
  State<Mobiles> createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: const Icon(CupertinoIcons.back,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
        elevation: 0,
        title: const Text(
          "Mobiles",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                CataTxt(
                    txt: "See all in Mobiles",
                    func: () {},
                    showico: false,
                    color: Color.fromRGBO(82, 136, 255, 1.0)),
                CataTxt(
                  txt: "Tablets",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Accessories",
                  func: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Accessories()),
                    );
                  },
                  showico: true,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Mobile Phones",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Smart Watches",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       left: MediaQuery.of(context).size.width * 0.06),
                //   child: const Text(
                //     "Tablets",
                //     style: TextStyle(
                //         color: Color.fromRGBO(5, 51, 56, 1),
                //         fontWeight: FontWeight.w500,
                //         fontSize: 16,
                //         ),
                //   ),
                // ),
              ]))),
    ));
  }
}

class Accessories extends StatelessWidget {
  const Accessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: const Icon(CupertinoIcons.back,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
        elevation: 0,
        title: const Text(
          "Accessories",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                CataTxt(
                    txt: "See all in Accessories",
                    func: () {},
                    showico: false,
                    color: Color.fromRGBO(82, 136, 255, 1.0)),
                CataTxt(
                  txt: "Charging Cables",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                    txt: "See all in Mobiles",
                    func: () {},
                    showico: false,
                    color: const Color.fromRGBO(82, 136, 255, 1.0)),
                CataTxt(
                  txt: "Tablets",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Converters",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Chargers",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Screens",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Screen Protectors",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Mobile Stands",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Ring Lights",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Selfie Sticks",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Power Banks",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Headphones",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Earphones",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Covers & Cases",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Externel Memory",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Other Accessories",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}
