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

class PropforsaleDetails extends StatefulWidget {
  final String category;
  const PropforsaleDetails({super.key, required this.category});

  @override
  State<PropforsaleDetails> createState() => _PropforsaleDetailsState();
}

class _PropforsaleDetailsState extends State<PropforsaleDetails> {
  int _typevalue = 0;
  int _areaunitvalue = 0;
  int _furnishedvalue = 0;
  int _bedroomsvalue = 0;
  int _bathroomsvalue = 0;
  int _constatevalue = 0;
  int _floorlevelvalue = 0;
  String _areatext = "";
  String _pricetext = "";
  String _adtitletext = "";
  String _describetext = "";
  String _featurestext = "";
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.category == "land & plots"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                leading: 'AGRICULTURAL LAND',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _typevalue,
                                                leading: 'COMMERCIAL PLOTS',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _typevalue,
                                                leading: 'FILES',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: MyRadioListTile<int>(
                                                  value: 4,
                                                  groupValue: _typevalue,
                                                  leading: 'INDUSTRIAL LAND',
                                                  onChanged: (value) =>
                                                      setState(() =>
                                                          _typevalue = value!),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: MyRadioListTile<int>(
                                                  value: 5,
                                                  groupValue: _typevalue,
                                                  leading: 'RESIDENTIAL PLOTS',
                                                  onChanged: (value) =>
                                                      setState(() =>
                                                          _typevalue = value!),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: MyRadioListTile<int>(
                                                  value: 6,
                                                  groupValue: _typevalue,
                                                  leading: 'PLOT FORM',
                                                  onChanged: (value) =>
                                                      setState(() =>
                                                          _typevalue = value!),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category == "houses" ||
                                    widget.category == "apartments & flats" ||
                                    widget.category == "portions & floors"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                    () => _furnishedvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _furnishedvalue,
                                                leading: 'FURNISHED',
                                                onChanged: (value) => setState(
                                                    () => _furnishedvalue =
                                                        value!),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category == "houses" ||
                                    widget.category == "apartments & flats" ||
                                    widget.category == "portions & floors"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Bedrooms *",
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
                                                groupValue: _bedroomsvalue,
                                                leading: '1',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _bedroomsvalue,
                                                leading: '2',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _bedroomsvalue,
                                                leading: '3',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 4,
                                                groupValue: _bedroomsvalue,
                                                leading: '4',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _bedroomsvalue,
                                                leading: '5',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 6,
                                                groupValue: _bedroomsvalue,
                                                leading: '6+',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 7,
                                                groupValue: _bedroomsvalue,
                                                leading: 'STUDIO',
                                                onChanged: (value) => setState(
                                                    () => _bedroomsvalue =
                                                        value!),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category == "houses" ||
                                    widget.category == "apartments & flats" ||
                                    widget.category == "portions & floors"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Bathrooms *",
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
                                                groupValue: _bathroomsvalue,
                                                leading: '1',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _bathroomsvalue,
                                                leading: '2',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _bathroomsvalue,
                                                leading: '3',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 4,
                                                groupValue: _bathroomsvalue,
                                                leading: '4',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _bathroomsvalue,
                                                leading: '5',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 6,
                                                groupValue: _bathroomsvalue,
                                                leading: '6',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 7,
                                                groupValue: _bathroomsvalue,
                                                leading: '7+',
                                                onChanged: (value) => setState(
                                                    () => _bathroomsvalue =
                                                        value!),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category == "houses"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        "Construction State *",
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
                                                groupValue: _constatevalue,
                                                leading: 'GREY STUCTURE',
                                                onChanged: (value) => setState(
                                                    () => _constatevalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _constatevalue,
                                                leading: 'FINISHED',
                                                onChanged: (value) => setState(
                                                    () => _constatevalue =
                                                        value!),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category ==
                                    "shops - offices - commercial space"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                leading: 'OFFICE',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _typevalue,
                                                leading: 'SHOP',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _typevalue,
                                                leading: 'WAREHOUSE',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 4,
                                                groupValue: _typevalue,
                                                leading: 'FACTORY',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _typevalue,
                                                leading: 'BUILDING',
                                                onChanged: (value) => setState(
                                                    () => _typevalue = value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category ==
                                        "shops - offices - commercial space" ||
                                    widget.category == "portions & floors"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Floor Level *",
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
                                                groupValue: _floorlevelvalue,
                                                leading: '0',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _floorlevelvalue,
                                                leading: '1',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _floorlevelvalue,
                                                leading: '2',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 4,
                                                groupValue: _floorlevelvalue,
                                                leading: '3',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _floorlevelvalue,
                                                leading: '4',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 6,
                                                groupValue: _floorlevelvalue,
                                                leading: '5',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 7,
                                                groupValue: _floorlevelvalue,
                                                leading: '6',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 8,
                                                groupValue: _floorlevelvalue,
                                                leading: '7+',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            widget.category == "apartments & flats"
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Floor Level *",
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
                                                groupValue: _floorlevelvalue,
                                                leading: '1',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 2,
                                                groupValue: _floorlevelvalue,
                                                leading: '2',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _floorlevelvalue,
                                                leading: '3',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 4,
                                                groupValue: _floorlevelvalue,
                                                leading: '4',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _floorlevelvalue,
                                                leading: '5',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 6,
                                                groupValue: _floorlevelvalue,
                                                leading: '6',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 7,
                                                groupValue: _floorlevelvalue,
                                                leading: '7+',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              MyRadioListTile<int>(
                                                value: 8,
                                                groupValue: _floorlevelvalue,
                                                leading: 'GROUND',
                                                onChanged: (value) => setState(
                                                    () => _floorlevelvalue =
                                                        value!),
                                              ),
                                            ],
                                          )),
                                    ],
                                  )
                                : Container(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 30, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Features *",
                                    style: TextStyle(
                                        color: Color.fromRGBO(12, 56, 61, 1.0),
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
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
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Area unit *",
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
                                          groupValue: _areaunitvalue,
                                          leading: 'KANAL',
                                          onChanged: (value) => setState(
                                              () => _areaunitvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 2,
                                          groupValue: _areaunitvalue,
                                          leading: 'MARLA',
                                          onChanged: (value) => setState(
                                              () => _areaunitvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 3,
                                          groupValue: _areaunitvalue,
                                          leading: 'SQUARE FEET',
                                          onChanged: (value) => setState(
                                              () => _areaunitvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyRadioListTile<int>(
                                          value: 4,
                                          groupValue: _areaunitvalue,
                                          leading: 'SQUARE METER',
                                          onChanged: (value) => setState(
                                              () => _areaunitvalue = value!),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: MyRadioListTile<int>(
                                            value: 5,
                                            groupValue: _areaunitvalue,
                                            leading: 'SQAURE YARDS',
                                            onChanged: (value) => setState(
                                                () => _areaunitvalue = value!),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Area *",
                                    style: TextStyle(
                                        color: Color.fromRGBO(12, 56, 61, 1.0),
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.93,
                                    height: 50,
                                    child: TextField(
                                      onChanged: ((value) {
                                        setState(() {
                                          _areatext = value;
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
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
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
                                    width: MediaQuery.of(context).size.width *
                                        0.94,
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
                                    width: MediaQuery.of(context).size.width *
                                        0.94,
                                    child: TextField(
                                      onChanged: (value) {
                                        setState(() {
                                        _describetext = value;                                          
                                        });
                                      },
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
                  //  "Brand" : _brandtext,
                  //  "Condition" : _conditionvalue,
                  "Property Type": _typevalue,
                  "Area Unit": _areaunitvalue,
                  "Area": _areatext,
                  "Features" : _featurestext,
                  "Furnished": _furnishedvalue,
                  "Bedrooms": _bedroomsvalue,
                  "Bathrooms": _bathroomsvalue,
                  "Construction State": _constatevalue,
                  "Floor Level": _floorlevelvalue,
                },
                "ad-title": _adtitletext,
                "description": _describetext,
              },
              images: urls,
            )
            // )
            // ,
            ));
  }
}
