// ignore_for_file: unnecessary_null_comparison

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:olx_clone/routes/addDetails/slider.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({
    Key? key,
    required this.des,
    required this.price,
    required this.imageUrl,
    required this.slides,
    required this.title,
    required this.details,
    required this.photo_url,
    required this.profile_name, required this.category,
  }) : super(key: key);
  final Map details;
  final String des;
  final String price;
  final String imageUrl;
  final String title;
  final String photo_url;
  final String profile_name;
  final List slides;
  final String category;
  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  List condition1 = [
    "NO OPT",
        "new",
    "open box",
    "refurbished",
    "used",
    "for parts or not working"
  ];
  List condition2 = [
    "NO OPT",
    "new",
    "used"
  ];
  @override
  Widget build(BuildContext context) {
    print(widget.price);
    print(widget.des);
    print(widget.details);
    print(widget.imageUrl);
    // final data = Map[nameof(widget.details.propertyName)];
    // print(map[nameof(obj.propertyName));
    // print(widget.details.key);
    return MaterialApp(
      home: Scaffold(
          // resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: AppBar(

                  // systemOverlayStyle:  const SystemUiOverlayStyle(
                  //     statusBarColor: Colors.black,systemNavigationBarColor: Colors.black),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 30,
                  ),
                  title: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                        color: Colors.white,
                      )))),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Slideshow(
                                imageURL: widget.slides,
                              )));
                },
                child: Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: PageView.builder(
                      itemCount: widget.slides.length,
                      // pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Image.network(
                                widget.slides[pagePosition],
                                fit: BoxFit.fitWidth,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
              Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Rs: ${widget.price}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(5, 51, 56, 1),
                              fontWeight: FontWeight.w900),
                        ),
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.favorite_border_outlined),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(5, 51, 56, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1.0,
                child: const Divider(
                  color: Color.fromRGBO(235, 238, 239, 1.0),
                  height: 20,
                  thickness: 1.8,
                  // indent: 10,
                  // endIndent: 60,
                ),
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Details",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(5, 51, 56, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  // Stack(
                  //   children: [
                  //     const Align(
                  //       alignment: Alignment.bottomLeft,
                  //       child: Padding(
                  //         padding: EdgeInsets.only(left: 15.0, top: 13),
                  //         child: Text(
                  //           "Condition",
                  //           style: TextStyle(
                  //               fontSize: 16.0,
                  //               color: Color.fromRGBO(5, 51, 56, 1),
                  //               fontWeight: FontWeight.w400),
                  //         ),
                  //       ),
                  //     ),
                  //     const Align(
                  //       alignment: Alignment.centerRight,
                  //       child: Padding(
                  //         padding: EdgeInsets.only(
                  //             top: 13, right: 15, bottom: 15),
                  //         child: Text(
                  //           "New",
                  //           style: TextStyle(
                  //               fontSize: 16.0,
                  //               color: Color.fromRGBO(89, 117, 115, 1),
                  //               fontWeight: FontWeight.w400),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // SizedBox(
                  //   height: 100,
                  //   child: ListView.builder(
                  //     itemCount: widget.details.length,
                  //     itemBuilder: (context, index) {
                  //       return Stack(
                  //         children: [
                  //            Align(
                  //             alignment: Alignment.bottomLeft,
                  //             child: Padding(
                  //               padding: EdgeInsets.only(left: 15.0, top: 0),
                  //               child: Text(
                  //                 // "Condition",
                  //                 widget.details.keys.,
                  //                 style: const TextStyle(
                  //                     fontSize: 16.0,
                  //                     color: Color.fromRGBO(5, 51, 56, 1),
                  //                     fontWeight: FontWeight.w400),
                  //               ),
                  //             ),
                  //           ),
                  //           const Align(
                  //             alignment: Alignment.centerRight,
                  //             child: Padding(
                  //               padding: EdgeInsets.only(
                  //                   top: 0, right: 15, bottom: 15),
                  //               child: Text(
                  //                 "New",
                  //                 style: TextStyle(
                  //                     fontSize: 16.0,
                  //                     color: Color.fromRGBO(89, 117, 115, 1),
                  //                     fontWeight: FontWeight.w400),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //   ),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: widget.details.entries.map((e) {
                      // return Text(e.key);
                      return Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 13),
                              child: Text(
                                // "Condition",
                                e.key,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(5, 51, 56, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 13, right: 15, bottom: 5),
                              child: Text(
                                e.key.toString() == "condition"
                                    ? 
                                    widget.category == "tablets" ||
                                    widget.category == "mobile phones" ?
                                    // widget.category == "smart watches" ?
                                    condition1[e.value] : condition2[e.value]
                                    : e.value.toString(),
                                // "New",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(89, 117, 115, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: const Divider(
                      color: Color.fromRGBO(235, 238, 239, 1.0),
                      height: 20,
                      thickness: 1.8,
                      // indent: 10,
                      // endIndent: 60,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(5, 51, 56, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10),
                          child: Text(
                            widget.des,
                            style: const TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(5, 51, 56, 1),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: const Divider(
                      color: Color.fromRGBO(235, 238, 239, 1.0),
                      height: 20,
                      thickness: 1.8,
                      // indent: 10,
                      // endIndent: 60,
                    ),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                const Color.fromRGBO(1, 48, 52, 1.0),
                            child: widget.photo_url == null
                                ? const Icon(
                                    CommunityMaterialIcons.face,
                                    color: Colors.white,
                                    size: 50,
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.network(
                                      widget.photo_url.toString(),
                                      // height: 350.0,
                                      // width: 300.0,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.175,
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: Text(
                              widget.profile_name.toString(),
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(5, 51, 56, 1),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.175,
                                top: MediaQuery.of(context).size.height * 0.01),
                            child: const Text(
                              "SEE PROFILE",
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(42, 91, 219, 1),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.01,
                            top: MediaQuery.of(context).size.height * 0.03),
                        child: const Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(
                              CupertinoIcons.forward,
                              size: 30,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: const Divider(
                      color: Color.fromRGBO(235, 238, 239, 1.0),
                      height: 20,
                      thickness: 1.8,
                      // indent: 10,
                      // endIndent: 60,
                    ),
                  ),
                ],
              )
            ]),
          )),
    );
  }
}
