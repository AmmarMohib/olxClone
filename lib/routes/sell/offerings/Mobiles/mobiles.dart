import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_clone/commons/custom_button.dart';
import 'package:olx_clone/commons/custom_radio.dart';
import 'package:olx_clone/routes/home/homepage.dart';
import 'package:olx_clone/routes/sell/sell.dart';
import 'package:olx_clone/routes/sell/sellcat/mobile.dart';
import 'package:olx_clone/routes/sell/offerings/Mobiles/brands.dart';
import 'package:olx_clone/functions/pick_photo.dart';

class MobilesDetails extends StatefulWidget {
  final String category;
  final String? brand; // nullable and optional
  const MobilesDetails({super.key, required this.category, this.brand});

  @override
  State<MobilesDetails> createState() => _MobilesDetailsState();
}

class _MobilesDetailsState extends State<MobilesDetails> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  List urls = [];
  void selectImages(List<XFile> _images) async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
      // Random _ranStg = Random();
      // final String imgPath = 'docs/${_ranStg.nextInt(10000)}';
      // // String file = "";
      // final FirebaseStorage storage = FirebaseStorage.instance;
      // for (var i = 0; i < imageFileList!.length; i++) {
      //   // file = imageFileList![i].path;
      //   TaskSnapshot tasking =
      //       await storage.ref(imgPath).putFile(File(imageFileList![i].path));
      //   var urls = await FirebaseStorage.instance.ref(imgPath).getDownloadURL();
      //   var url = urls.toString();
      //   // print("Image List Length:" + imageFileList!.length.toString());
      //   print(url);
      // }

      // for (var element in selectedImages) {
      //   print(element.name);
      // }
      // setState(() {});
      // }

      // Future<List<String>> uploadFiles() async {
      // if(imagePicker)
      var imageUrls =
          await Future.wait(_images.map((_image) => uploadFile(_image)));
      print(imageUrls);
      // return imageUrls;
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

  int _conditionvalue = 0;
  String _pricetext = "";
  String _adtitletext = "";
  String _describetext = "";
  String _brandtext = "";
  @override
  Widget build(BuildContext context) {
    print(widget.brand);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
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
                    child: InkWell(
                      onTap: (() {
                        selectImages(imageFileList!);
                        // uploadFiles(imageFileList!);
                      }),
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
                          const Text(
                            "Brand *",
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
                                  _brandtext = value;
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
                          widget.category == "mobile phones" ||
                                  widget.category == "tablets"
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
                                              groupValue: _conditionvalue,
                                              leading: 'new',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _conditionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _conditionvalue,
                                              leading: 'open box',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _conditionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _conditionvalue,
                                              leading: 'refurbished',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _conditionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _conditionvalue,
                                              leading: 'used',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _conditionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _conditionvalue,
                                                leading:
                                                    'for parts or not working',
                                                onChanged: (value) => setState(
                                                    () => _conditionvalue =
                                                        value!),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                )
                              : Container(),
                          widget.category == "smart watches"
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
                                              groupValue: _conditionvalue,
                                              leading: 'new',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _conditionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _conditionvalue,
                                              leading: 'used',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _conditionvalue = value!),
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
              "category" : widget.category,
              "pro_photo": FirebaseAuth.instance.currentUser!.photoURL,
              "pro_name": FirebaseAuth.instance.currentUser!.displayName,
              "pro_email": FirebaseAuth.instance.currentUser!.email,
             "price" : _pricetext,
             "details" : {
              "Type" : widget.category.toCapitalized(),
             "Brand" : _brandtext,
             "Condition" : _conditionvalue,
             },
            "ad-title" :  _adtitletext,
             "description" : _describetext,
            },
            images: urls,
          )),
    );
  }
}
