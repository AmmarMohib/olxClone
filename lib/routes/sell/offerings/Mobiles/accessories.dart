import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_button.dart';
import 'package:olx_clone/commons/custom_radio.dart';

class AccessoriesDetails extends StatefulWidget {
  final String category;
  const AccessoriesDetails({super.key, required this.category});

  @override
  State<AccessoriesDetails> createState() => _AccessoriesDetailsState();
}

class _AccessoriesDetailsState extends State<AccessoriesDetails> {
  int _typeValue = 0;
  int _condValue = 0;
  int _devtypeValue = 0;
  String _pricetext = "";
  String _adtitletext = "";
  String _describetext = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (() => Navigator.pop(context)),
              icon:
                  const Icon(Icons.close, color: Color.fromRGBO(5, 51, 56, 1)),
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
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.93,
                    child: Container(
                      color: const Color.fromRGBO(250, 250, 250, 1.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "UPLOAD UP TO 20 PHOTOS",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 51, 56, 1)),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // Image(image: AssetImage("assets/images/upload_logo.png"), width: MediaQuery.of(context).size.width * 0.9,)
                          Container(
                              height: 150,
                              foregroundDecoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/upload_logo.png"),
                                      fit: BoxFit.fill))),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Price *",
                            style: TextStyle(
                                color: Color.fromRGBO(12, 56, 61, 1.0),
                                fontSize: 12),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.93,
                            height: 50,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  _pricetext = value;
                                });
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color.fromRGBO(
                                            116, 205, 202, 1.0))),
                                border: OutlineInputBorder(),
                                // labelText: 'Enter address',
                                // hintText: 'Enter the name of the address'
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          widget.category == "charging cables" ||
                                  widget.category == "chargers"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Type *",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(12, 56, 61, 1.0),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // SizedBox(
                                    //   height: 7,
                                    // ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, top: 10),
                                        child: Wrap(
                                          children: [
                                            MyRadioListTile<int>(
                                              value: 1,
                                              groupValue: _typeValue,
                                              leading: 'IOS',
                                              onChanged: (value) => setState(
                                                  () => _typeValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _typeValue,
                                              leading: 'MICRO-USB/ANDROID',
                                              onChanged: (value) => setState(
                                                  () => _typeValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _typeValue,
                                              leading: 'USB TYPE-C',
                                              onChanged: (value) => setState(
                                                  () => _typeValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _typeValue,
                                              leading: 'OTHERS',
                                              onChanged: (value) => setState(
                                                  () => _typeValue = value!),
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                )
                              : Container(),
                          widget.category == "chargers" ||
                                  widget.category == "screens" ||
                                  widget.category == "screen protectors" ||
                                  widget.category == "covers & cases"
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    widget.category == "screens" ||
                                            widget.category ==
                                                "screen protectors" ||
                                            widget.category == "covers & cases"
                                        ? Text(
                                            "Type *",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    12, 56, 61, 1.0),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )
                                        : const Text(
                                            "Device Type *",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    12, 56, 61, 1.0),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                    // SizedBox(
                                    //   height: 7,
                                    // ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, top: 10),
                                        child: Wrap(
                                          children: [
                                            MyRadioListTile<int>(
                                              value: 1,
                                              groupValue: _devtypeValue,
                                              leading: 'TABLET',
                                              onChanged: (value) => setState(
                                                  () => _devtypeValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _devtypeValue,
                                              leading: 'MOBILE',
                                              onChanged: (value) => setState(
                                                  () => _devtypeValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _devtypeValue,
                                              leading: 'SMART WATCH',
                                              onChanged: (value) => setState(
                                                  () => _devtypeValue = value!),
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                )
                              : Container(),
                          widget.category == "headphones" ||
                                  widget.category == "earphones"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Type *",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(12, 56, 61, 1.0),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, top: 10),
                                        child: Wrap(
                                          children: [
                                            MyRadioListTile<int>(
                                              value: 1,
                                              groupValue: _typeValue,
                                              leading: 'WIRED',
                                              onChanged: (value) => setState(
                                                  () => _typeValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _typeValue,
                                              leading: 'WIRELESS',
                                              onChanged: (value) => setState(
                                                  () => _typeValue = value!),
                                            ),
                                          ],
                                        )),
                                    SizedBox(height: 10),
                                  ],
                                )
                              : Container(),
                          widget.category == "charging cables" ||
                                  widget.category == "converters" ||
                                  widget.category == "chargers" ||
                                  widget.category == "mobile stands" ||
                                  widget.category == "selfie sticks" ||
                                  widget.category == "power banks" ||
                                  widget.category == "headphones" ||
                                  widget.category == "earphones" ||
                                  widget.category == "covers & cases" ||
                                  widget.category == "externel memory"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Condition *",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(12, 56, 61, 1.0),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, top: 10),
                                        child: Wrap(
                                          children: [
                                            MyRadioListTile<int>(
                                              value: 1,
                                              groupValue: _condValue,
                                              leading: 'NEW',
                                              onChanged: (value) => setState(
                                                  () => _condValue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _condValue,
                                              leading: 'USED',
                                              onChanged: (value) => setState(
                                                  () => _condValue = value!),
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              : Container(),
                          // SizedBox(
                          //   height: 7,
                          // ),

                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Ad title *",
                                  style: TextStyle(
                                      color: Color.fromRGBO(12, 56, 61, 1.0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.94,
                                  child: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        _adtitletext = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  116, 205, 202, 1.0))),
                                      border: OutlineInputBorder(),
                                      // labelText: 'Enter street',
                                      // hintText: 'Enter your street'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Describe what you are selling *",
                                  style: TextStyle(
                                      color: Color.fromRGBO(12, 56, 61, 1.0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.94,
                                  child: TextField(
                                    onChanged: (value) {
                                setState(() {
                                _describetext = value;                                  
                                });
                              },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  116, 205, 202, 1.0))),
                                      border: OutlineInputBorder(),
                                      // labelText: 'Enter building number',
                                      // hintText:
                                      // 'Enter your building number'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.94,
                              child: IgnorePointer(
                                child: const TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: Color.fromRGBO(
                                                116, 205, 202, 1.0))),
                                    border: OutlineInputBorder(),
                                    // labelText: 'Enter building number',
                                    hintText: 'Location',
                                    suffixIcon: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 15,
                                        color: Colors.black),
                                    hintStyle: TextStyle(color: Colors.black),
                                    // semanticCounterText: ""
                                    // prefixText: "jojoo"
                                  ),
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // bottomNavigationBar: NextButton(
          //   datatosend: [
          //     widget.category,
          //     _pricetext,
          //     _typeValue,
          //     _condValue,
          //     _adtitletext,
          //     _describetext,
          //   ],
          // )
          ),
    );
  }
}
