import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_button.dart';
import 'package:olx_clone/commons/custom_radio.dart';

class FurnitureDetails extends StatefulWidget {
  final String category;
  const FurnitureDetails({super.key, required this.category});

  @override
  State<FurnitureDetails> createState() => _FurnitureDetailsState();
}

class _FurnitureDetailsState extends State<FurnitureDetails> {
  int _conditionvalue = 0;
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
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "UPLOAD UP TO 20 PHOTOS",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 51, 56, 1)),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                              SizedBox(
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
                    widget.category == "bikes & motorcycles"
                        ? Padding(
                            padding: const EdgeInsets.only(left: 15, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Make *",
                                  style: TextStyle(
                                      color: Color.fromRGBO(12, 56, 61, 1.0),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                // SizedBox(
                                //   height: 7,
                                // ),
                                Container(
                                    margin:
                                        const EdgeInsets.only(left: 0, top: 10),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.93,
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
                                          },
                                          child: const IgnorePointer(
                                            child: TextField(
                                              // style: TextStyle(backgroundColor: Colors.amber),
                                              // readOnly: true,
                                              // expands: true,
                                              // minLines: 2,
                                              // maxLines: 2,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              // controller: loc,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Color.fromRGBO(
                                                    235, 238, 239, 1.0),
                                                filled: true,
                                                contentPadding:
                                                    EdgeInsets.all(10),
                                                // prefixIcon: Icon(Icons.search),
                                                suffixIcon: Icon(
                                                    Icons.arrow_forward_ios),
                                                hoverColor: Colors.amberAccent,
                                                // border:
                                                hintStyle: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 47, 52, 1.0),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                hintText: 'None',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          )
                        : Container(),
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
                              // controller: _priceController,
                              onChanged: ((value) {
                                print(value);
                                setState(() {
                                  print(value);
                                  // _priceController.text == value;
                                  _pricetext = value;
                                });
                              }),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Condition *",
                                style: TextStyle(
                                    color: Color.fromRGBO(12, 56, 61, 1.0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(left: 0, top: 10),
                                  child: Wrap(
                                    children: [
                                      MyRadioListTile<int>(
                                        value: 1,
                                        groupValue: _conditionvalue,
                                        leading: 'NEW',
                                        onChanged: (value) => setState(
                                            () => _conditionvalue = value!),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      MyRadioListTile<int>(
                                        value: 2,
                                        groupValue: _conditionvalue,
                                        leading: 'USED',
                                        onChanged: (value) => setState(
                                            () => _conditionvalue = value!),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
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
                                    // controller: _adtitleController,
                                    onChanged: (value) {
                                      print(value);
                                      // _adtitleController.text == value;
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
                                    // controller: _decribeController,
                                    onChanged: ((value) {
                                      print(value);
                                      // _decribeController.text == value;
                                      setState(() {
                                      _describetext = value;                                        
                                      });
                                    }),
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
                              child: const IgnorePointer(
                                child: TextField(
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
          //     _conditionvalue,
          //     _adtitletext,
          //     _describetext,
          //   ],
          // )
          ),
    );
  }
}
