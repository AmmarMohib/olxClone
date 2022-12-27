import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_radio.dart';

class PropforrentDetails extends StatefulWidget {
  final String category;
  const PropforrentDetails({super.key, required this.category});

  @override
  State<PropforrentDetails> createState() => _PropforrentDetailsState();
}

class _PropforrentDetailsState extends State<PropforrentDetails> {
  int _typevalue = 0;
  int _areaunitvalue = 0;
  int _furnishedvalue = 0;
  int _bedroomsvalue = 0;
  int _bathroomsvalue = 0;
  int _constatevalue = 0;
  int _floorlevelvalue = 0;
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
                            child: const TextField(
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
                    widget.category == "vacation rentals - guest houses"
                        ? Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Bedrooms *",
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
                                          groupValue: _bedroomsvalue,
                                          leading: '1',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 2,
                                          groupValue: _bedroomsvalue,
                                          leading: '2',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 3,
                                          groupValue: _bedroomsvalue,
                                          leading: '3',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 4,
                                          groupValue: _bedroomsvalue,
                                          leading: '4',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 5,
                                          groupValue: _bedroomsvalue,
                                          leading: '5',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 6,
                                          groupValue: _bedroomsvalue,
                                          leading: '6+',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 7,
                                          groupValue: _bedroomsvalue,
                                          leading: 'STUDIO',
                                          onChanged: (value) => setState(
                                              () => _bedroomsvalue = value!),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          )
                        : Container(),
                    widget.category == "vacation rentals - guest houses"
                        ? Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "Bathrooms *",
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
                                          groupValue: _bathroomsvalue,
                                          leading: '1',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 2,
                                          groupValue: _bathroomsvalue,
                                          leading: '2',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 3,
                                          groupValue: _bathroomsvalue,
                                          leading: '3',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 4,
                                          groupValue: _bathroomsvalue,
                                          leading: '4',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 5,
                                          groupValue: _bathroomsvalue,
                                          leading: '5',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 6,
                                          groupValue: _bathroomsvalue,
                                          leading: '6',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 7,
                                          groupValue: _bathroomsvalue,
                                          leading: '7+',
                                          onChanged: (value) => setState(
                                              () => _bathroomsvalue = value!),
                                        ),
                                      ],
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
                          widget.category == "rooms" ||
                                  widget.category == "roommates & paying guests"
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
                                              groupValue: _typevalue,
                                              leading: 'SINGLE',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _typevalue,
                                              leading: 'SHARING',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                )
                              : Container(),
                          widget.category == "rooms" ||
                                  widget.category == "roommates & paying guests"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Furnished *",
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
                                              groupValue: _furnishedvalue,
                                              leading: 'UNFURNISHED',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _furnishedvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _furnishedvalue,
                                              leading: 'FURNISHED',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _furnishedvalue = value!),
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              : Container(),
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
                                  child: const TextField(
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
                                  child: const TextField(
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
          bottomNavigationBar: BottomAppBar(
              child: Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.93,
                  child: ElevatedButton(
                      onPressed: () {
                        // loc.text = "";
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(5, 51, 56, 1))),
                      child: const Text("Next"))),
              const SizedBox(
                height: 70,
              )
            ],
          ))),
    );
  }
}
