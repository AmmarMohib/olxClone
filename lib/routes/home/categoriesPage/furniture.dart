import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';

class Furniture extends StatelessWidget {
  const Furniture({Key? key}) : super(key: key);

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
          "Furniture & Home Decor",
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
                CataTxt(txt: "See all in Furniture & Home Decor", func: () {}, showico: false, color: Color.fromRGBO(82, 136, 255, 1.0)),
                CataTxt(
                  txt: "Sofa & Chairs",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Beds & Wardrobes",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Home Decoration",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Tables & Dining",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Garden & Outdoor",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Painting & Mirrors",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Rugs & Carpets",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Curtains & Blinds",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Office Furniture",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Other Household Items",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}