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
                CataTxt(
                  txt: "Sofa & Chairs",
                  category: "sofa & chairs",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Beds & Wardrobes",
                  category: "beds & wardrobes",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Home Decoration",
                  category: "home decoration",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Tables & Dining",
                  category: "tables & dining",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Garden & Outdoor",
                  category: "garden & outdoor",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Painting & Mirrors",
                  category: "painting & mirrors",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Rugs & Carpets",
                  category: "rugs & carpets",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Curtains & Blinds",
                  category: "curtains & blinds",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Office Furniture",
                  category: "office furniture",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Other Household Items",
                  category: "other household items",
                  func: () {},
                  showico: false, color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}