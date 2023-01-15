// ignore_for_file: unused_field, non_constant_identifier_names

import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_clone/commons/custom_button.dart';
import 'package:olx_clone/commons/custom_radio.dart';
import 'package:olx_clone/routes/home/homepage.dart';

class VehiclesDetails extends StatefulWidget {
  final String category;
  const VehiclesDetails({super.key, required this.category});

  @override
  State<VehiclesDetails> createState() => _VehiclesDetailsState();
}

class _VehiclesDetailsState extends State<VehiclesDetails> {
  int _fuelvalue = 0;
  int _carDocvalue = 0;
  int _assemblyvalue = 0;
  int _transmissionvalue = 0;
  int _conditionvalue = 0;
  int _installmentplanvalue = 0;
  int _registeredvalue = 0;
  int _typevalue = 0;
  String _maketext = "";
  String _modeltext = "";
  String _pricetext = "";
  String _yeartext = "";
  String _KMstext = "";
  String _registext = "";
  String _featurestext = "";
  String _adtitletext = "";
  String _describetext = "";
  String _downpaymenttext = "";
  String _monthlypaymenttext = "";
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  List urls = [];
  void selectImages(List<XFile> _images) async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
      var imageUrls =
          await Future.wait(_images.map((_image) => uploadFile(_image)));
      print(imageUrls);
    }
  }

  Future<String> uploadFile(XFile _image) async {
    Random _ranStg = Random();
    final String imgPath = 'docs/${_ranStg.nextInt(10000)}';
    Reference storageReference = FirebaseStorage.instance.ref().child(imgPath);
    UploadTask uploadTask = storageReference.putFile(File(_image.path));
    await uploadTask.then((p0) => print(p0));
    var url = await storageReference.getDownloadURL();
    setState(() {
      urls.add(url.toString());
    });
    return await storageReference.getDownloadURL();
  }

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
                InkWell(
                  onTap: () {
                    selectImages(imageFileList!);
                  },
                  child: Center(
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.category == "cars" ||
                            widget.category == "cars on installments"
                        ? Padding(
                            padding: const EdgeInsets.only(left: 15, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Make *",
                                  style: TextStyle(
                                      color: Color.fromRGBO(12, 56, 61, 1.0),
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.93,
                                  height: 50,
                                  child: TextField(
                                    onChanged: ((value) {
                                      setState(() {
                                        _maketext = value;
                                      });
                                    }),
                                    decoration: const InputDecoration(
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
                          )
                        : Container(),
                    // : Container(),
                    widget.category == "cars" ||
                            widget.category == "cars on installments"
                        ? Padding(
                            padding: const EdgeInsets.only(left: 15, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Model *",
                                  style: TextStyle(
                                      color: Color.fromRGBO(12, 56, 61, 1.0),
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.93,
                                  height: 50,
                                  child: TextField(
                                    onChanged: ((value) {
                                      setState(() {
                                        _modeltext = value;
                                      });
                                    }),
                                    decoration: const InputDecoration(
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
                          )
                        : Container(),
                    widget.category != "cars on installments"
                        ? Padding(
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.93,
                                  height: 50,
                                  child: TextField(
                                    onChanged: ((value) {
                                      setState(() {
                                        _pricetext = value;
                                      });
                                    }),
                                    decoration: const InputDecoration(
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
                          )
                        : Container(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          widget.category == "cars" ||
                                  widget.category == "cars on installments" ||
                                  widget.category == "buses, vans & trucks" ||
                                  widget.category == "rickshaw & chingchi" ||
                                  widget.category == "tractors & trailers"
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Year *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.94,
                                        child: TextField(
                                          onChanged: ((value) {
                                            setState(() {
                                              _yeartext = value;
                                            });
                                          }),
                                          decoration: const InputDecoration(
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
                                )
                              : Container(),
                          widget.category == "cars" ||
                                  widget.category == "buses, vans & trucks" ||
                                  widget.category == "rickshaw & chingchi" ||
                                  widget.category == "tractors & trailers"
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "KM's driven *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.94,
                                        child: TextField(
                                          onChanged: ((value) {
                                            setState(() {
                                              _KMstext = value;
                                            });
                                          }),
                                          decoration: const InputDecoration(
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
                                )
                              : Container(),
                          widget.category == "cars" ||
                                  widget.category == "cars on installments"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    const Text(
                                      "Fuel *",
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
                                              groupValue: _fuelvalue,
                                              leading: 'PETROL',
                                              onChanged: (value) => setState(
                                                  () => _fuelvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _fuelvalue,
                                              leading: 'DIESEL',
                                              onChanged: (value) => setState(
                                                  () => _fuelvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _fuelvalue,
                                              leading: 'LPG',
                                              onChanged: (value) => setState(
                                                  () => _fuelvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _fuelvalue,
                                              leading: 'CNG',
                                              onChanged: (value) => setState(
                                                  () => _fuelvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 5,
                                              groupValue: _fuelvalue,
                                              leading: 'HYBRID',
                                              onChanged: (value) => setState(
                                                  () => _fuelvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 6,
                                              groupValue: _fuelvalue,
                                              leading: 'ELECTRIC',
                                              onChanged: (value) => setState(
                                                  () => _fuelvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              : Container(),
                          widget.category == "cars"
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Registration City *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.93,
                                        height: 50,
                                        child: TextField(
                                          onChanged: ((value) {
                                            setState(() {
                                              _registext = value;
                                            });
                                          }),
                                          decoration: const InputDecoration(
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
                                )
                              : Container(),
                          const SizedBox(
                            height: 20,
                          ),
                          widget.category == "cars" ||
                                  widget.category == "cars on installments"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Car documents *",
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
                                              groupValue: _carDocvalue,
                                              leading: 'ORIGINAL',
                                              onChanged: (value) => setState(
                                                  () => _carDocvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _carDocvalue,
                                              leading: 'DUPLICATE',
                                              onChanged: (value) => setState(
                                                  () => _carDocvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                )
                              : Container(),
                          widget.category == "cars" ||
                                  widget.category == "cars on installments"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Assembly *",
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
                                              groupValue: _assemblyvalue,
                                              leading: 'LOCAL',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _assemblyvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _assemblyvalue,
                                              leading: 'IMPORTED',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _assemblyvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                )
                              : Container(),
                          widget.category == "cars" ||
                                  widget.category == "cars on installments"
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Features *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.93,
                                        height: 50,
                                        child: TextField(
                                          onChanged: ((value) {
                                            setState(() {
                                              _featurestext = value;
                                            });
                                          }),
                                          decoration: const InputDecoration(
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
                                      const SizedBox(height: 20)
                                    ],
                                  ),
                                )
                              : Container(),
                          widget.category == "cars" ||
                                  widget.category == "cars on installments"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Transmission *",
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
                                              groupValue: _transmissionvalue,
                                              leading: 'AUTOMATIC',
                                              onChanged: (value) => setState(
                                                  () => _transmissionvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _transmissionvalue,
                                              leading: 'MANUAL',
                                              onChanged: (value) => setState(
                                                  () => _transmissionvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                )
                              : Container(),
                          widget.category == "spare parts car"
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
                                              leading: 'CAR PARTS',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _typevalue,
                                              leading: 'OTHER PARTS',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              : Container(),
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
                                      const SizedBox(
                                        height: 50,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          widget.category == "cars on installments"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Registered *",
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
                                              groupValue: _registeredvalue,
                                              leading: 'YES',
                                              onChanged: (value) => setState(
                                                  () => _registeredvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _registeredvalue,
                                              leading: 'NO',
                                              onChanged: (value) => setState(
                                                  () => _registeredvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Down payment *",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    12, 56, 61, 1.0),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.94,
                                            child: TextField(
                                              onChanged: ((value) {
                                                setState(() {
                                                  _downpaymenttext = value;
                                                });
                                              }),
                                              decoration: const InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color:
                                                                Color.fromRGBO(
                                                                    116,
                                                                    205,
                                                                    202,
                                                                    1.0))),
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
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Monthly installment *",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    12, 56, 61, 1.0),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.94,
                                            child: TextField(
                                              onChanged: ((value) {
                                                setState(() {
                                                  _monthlypaymenttext = value;
                                                  _pricetext = value;
                                                });
                                              }),
                                              decoration: const InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color:
                                                                Color.fromRGBO(
                                                                    116,
                                                                    205,
                                                                    202,
                                                                    1.0))),
                                                border: OutlineInputBorder(),
                                                // labelText: 'Enter street',
                                                // hintText: 'Enter your street'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                )
                              : Container(),
                          widget.category == "cars on installments"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Installment plan *",
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
                                              groupValue: _installmentplanvalue,
                                              leading: 'FLEXIBLE',
                                              onChanged: (value) => setState(
                                                  () => _installmentplanvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _installmentplanvalue,
                                              leading: '1 YEAR',
                                              onChanged: (value) => setState(
                                                  () => _installmentplanvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _installmentplanvalue,
                                              leading: '2 YEAR',
                                              onChanged: (value) => setState(
                                                  () => _installmentplanvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _installmentplanvalue,
                                              leading: '3 YEAR',
                                              onChanged: (value) => setState(
                                                  () => _installmentplanvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 5,
                                              groupValue: _installmentplanvalue,
                                              leading: '4 YEAR',
                                              onChanged: (value) => setState(
                                                  () => _installmentplanvalue =
                                                      value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: MyRadioListTile<int>(
                                                value: 6,
                                                groupValue:
                                                    _installmentplanvalue,
                                                leading: '5 YEAR',
                                                onChanged: (value) => setState(
                                                    () =>
                                                        _installmentplanvalue =
                                                            value!),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: MyRadioListTile<int>(
                                                value: 7,
                                                groupValue:
                                                    _installmentplanvalue,
                                                leading: '6 YEAR',
                                                onChanged: (value) => setState(
                                                    () =>
                                                        _installmentplanvalue =
                                                            value!),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              // padding: const EdgeInsets.all(8.0),
                                              child: MyRadioListTile<int>(
                                                value: 8,
                                                groupValue:
                                                    _installmentplanvalue,
                                                leading: '7 YEAR',
                                                onChanged: (value) => setState(
                                                    () =>
                                                        _installmentplanvalue =
                                                            value!),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              : Container(),
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
                                    onChanged: ((value) {
                                      setState(() {
                                        _adtitletext = value;
                                      });
                                    }),
                                    decoration: const InputDecoration(
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
                                    onChanged: ((value) {
                                      setState(() {
                                        _describetext = value;
                                      });
                                    }),
                                    decoration: const InputDecoration(
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
          bottomNavigationBar: NextButton(
            datatosend: {
              "category": widget.category,
              "pro_photo": FirebaseAuth.instance.currentUser!.photoURL,
              "pro_name": FirebaseAuth.instance.currentUser!.displayName,
              "pro_email": FirebaseAuth.instance.currentUser!.email,
              "price": _pricetext,
              "details": {
                "Type": widget.category.toCapitalized(),
                "Part Type" : _typevalue,
                 "Make" : _maketext,
                "Model" : _modeltext,
                "Year" : _yeartext,
                 "KM's driven" : _KMstext,
                "Fuel" : _fuelvalue,
                'Registration City' : _registext,
                "Car documents" : _carDocvalue,
                 "Assembly" : _assemblyvalue,
                "features" : _featurestext,
                     "Transmission"
                    : _transmissionvalue,
                "Condition": _conditionvalue,
                "Registered" : _registeredvalue,
                "Down Payment" : _downpaymenttext,
                
                     "Monthly installment"
                    : _monthlypaymenttext,
                    "Installment plan"
                    : _installmentplanvalue,
              },
              "ad-title": _adtitletext,

              "description": _describetext,
            },
            images: urls,
          )
          //         bottomNavigationBar: NextButton(
          //           datatosend: [
          //             widget.category,
          //       _fuelvalue,
          // _carDocvalue,
          // _assemblyvalue,
          // _transmissionvalue,
          // _conditionvalue,
          // _installmentplanvalue,
          // _registeredvalue,
          // _typevalue,
          // _maketext,
          // _modeltext,
          // _pricetext,
          // _yeartext,
          // _KMstext,
          // _registext,
          // _featurestext,
          // _adtitletext,
          // _downpaymenttext,
          // _monthlypaymenttext,
          // _adtitletext,

          //           ],
          //         )
          ),
    );
  }
}
