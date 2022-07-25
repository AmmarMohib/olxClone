import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocationSelect extends StatefulWidget {
  const LocationSelect({Key? key}) : super(key: key);

  @override
  State<LocationSelect> createState() => _LocationSelectState();
}

class _LocationSelectState extends State<LocationSelect> {
  var loc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // loc.text = "Pakistan";

    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(134),
          child: AppBar(
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 30,
            ),
            title: const Text(
              "Locations",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(39),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 360,
                          height: 40,
                          child: TextField(
                            // expands: true,
                            // minLines: 2,
                            // maxLines: 2,
                            textAlignVertical: TextAlignVertical.center,
                            controller: loc,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hoverColor: Colors.amberAccent
                              ,
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Search area, city or country',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                loc.text = "";
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(5, 51, 56, 1))),
                              child: const Text("Cancel")))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    // ignore: avoid_print
                    onTap: (() => print("sorry")),
                    child: Row(
                      children: [
                        Container(
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        child: const Align(
                        alignment: Alignment.bottomLeft,
                        child:
                        Icon(Icons.gps_fixed, color: Color.fromRGBO(58, 119, 255, 1),),
                        ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text("Use current location", style: TextStyle(color: Color.fromRGBO(58, 119, 255, 1),fontSize: 17))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      // actions: [
      //   Image.asset(
      //     'assets/images/olx_logo_blue.png',
      //     height: 30,
      //     width: 30,
      //   ),
      // ],
      body: null,
    ));
  }
}