import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/routes/home/categories.dart';

class BuyPackages extends StatefulWidget {
  const BuyPackages({super.key});

  @override
  State<BuyPackages> createState() => _BuyPackagesState();
}

class _BuyPackagesState extends State<BuyPackages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 20, color: Color.fromRGBO(12, 56, 61, 1.0)),
            ),
            title: Text(
              "Buy Packages",
              style: TextStyle(
                  color: Color.fromRGBO(12, 56, 61, 1.0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Color.fromRGBO(250, 250, 250, 1)),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "select options to show packages".toUpperCase(),
                style: TextStyle(
                    color: Color.fromRGBO(0, 47, 52, 1.0),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Text("Category",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 47, 52, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.93,
                  height: 55,
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: InkWell(
                      // splashFactory: NoSplash.splashFactory,
                      onTap: () {
                        if (kDebugMode) {
                          print("object");
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllCatagories()),
                        );
                      },
                      child: const IgnorePointer(
                        child: TextField(
                          // style: TextStyle(backgroundColor: Colors.amber),
                          // readOnly: true,
                          // expands: true,
                          // minLines: 2,
                          // maxLines: 2,
                          textAlignVertical: TextAlignVertical.center,
                          // controller: loc,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Color.fromRGBO(235, 238, 239, 1.0),
                            filled: true,
                            contentPadding: EdgeInsets.all(10),
                            // prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.arrow_forward_ios),
                            hoverColor: Colors.amberAccent,
                            // border:
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(0, 47, 52, 1.0),
                                fontWeight: FontWeight.bold),
                            hintText: 'No category selected',
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
