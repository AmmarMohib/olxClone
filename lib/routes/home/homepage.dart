// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_clone/commons/actionbutton.dart';
import 'package:olx_clone/commons/bottomnavbar.dart';
import 'package:olx_clone/commons/custom_avatar.dart';
import 'package:olx_clone/routes/account/account.dart';
import 'package:olx_clone/routes/addDetails/details.dart';
import 'package:olx_clone/routes/home/categories.dart';
import 'package:olx_clone/routes/home/categoriesPage/Animals.dart';
import 'package:olx_clone/routes/home/categoriesPage/Bussiness.dart';
import 'package:olx_clone/routes/home/categoriesPage/Services.dart';
import 'package:olx_clone/routes/home/categoriesPage/bikes.dart';
import 'package:olx_clone/routes/home/categoriesPage/books.dart';
import 'package:olx_clone/routes/home/categoriesPage/electronics.dart';
import 'package:olx_clone/routes/home/categoriesPage/fashion.dart';
import 'package:olx_clone/routes/home/categoriesPage/furniture.dart';
import 'package:olx_clone/routes/home/categoriesPage/jobs.dart';
import 'package:olx_clone/routes/home/categoriesPage/kids.dart';
import 'package:olx_clone/routes/home/categoriesPage/mobile.dart';
import 'package:olx_clone/routes/home/categoriesPage/propertyforrent.dart';
import 'package:olx_clone/routes/home/categoriesPage/propertyforsale.dart';
import 'package:olx_clone/routes/home/categoriesPage/vehicles.dart';
import 'package:olx_clone/routes/home/filters.dart';
import 'package:olx_clone/routes/home/location_selector.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';


extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Ads').snapshots();  
  @override
  void initState() {
    super.initState();
  }

  PageController _myPage = PageController(initialPage: 0);
  List _items = [];
  List _slidesuri = [];
  int _currentIndex = 0;
  // ignore: non_constant_identifier_names
  String location_name = 'Pakistan';
  IconData favico = Icons.favorite_border_sharp;
  @override
  Widget build(BuildContext context) {
    if (_myPage.positions.length > 0 && _myPage.position.extentAfter == 0.0) {
    } else if (_myPage.positions.length > 0 &&
        _myPage.position.extentAfter == 0.0) {
      _myPage.animateTo(_myPage.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
    // if (_myPage.hasClients) {
    //   _myPage.animateTo(_myPage.position.maxScrollExtent,
    //     duration: const Duration(milliseconds: 500),
    //     curve: Curves.easeInOut);
    // }

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    abc() async {
      // String data = await DefaultAssetBundle.of(context)
      //     .loadString("assets/example.json");
      // final jsonResult = jsonDecode(data); //latest Dart
      // // var jsonValue = json.decode(jsonResult['description']);
      // print(jsonResult[0].toString().characters.map((e) => print(e)));
      final String response =
          await rootBundle.loadString('assets/example.json');
      final data = await json.decode(response);
      setState(() {
        _items = data["items"];
        // _slidesuri = ;
      });
      print(_items[0]['id']);
    }

    // abc();

    print("orientation = ${MediaQuery.of(context).orientation}");
    double resWidth = MediaQuery.of(context).size.width * 0.85;
    final double fillPercent = 56.23; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];
    final Color background = Colors.grey;
    final Color fill = Colors.redAccent;
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];

    // if (Platform.isAndroid.) {
    //   resWidth = MediaQuery.of(context);
    // }
    // else if (Platform.isWindows) {
    //   resWidth =
    // }
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      // print("orientation = ${MediaQuery.of(context).orientation}");
      resWidth = MediaQuery.of(context).size.width * 0.85;
    } else if (MediaQuery.of(context).orientation == Orientation.landscape) {
      resWidth = MediaQuery.of(context).size.width * 0.92;
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              elevation: 0,
              backgroundColor: Colors.white,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/olx_logo_blue.png",
                            // fit: BoxFit.fitWidth,
                            width: 33,
                          ),
                          // const SizedBox(
                          //   width: 74,
                          // ),
                          Align(
                            // alignment: Alignment.center,
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                if (kDebugMode) {
                                  print('object');
                                }
                              },
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor:
                                        Color.fromRGBO(239, 237, 240, 1.0),
                                    child: Icon(
                                      Icons.directions_car_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text("olx motors".toUpperCase(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)))
                                ],
                              ),


                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {
                                if (kDebugMode) {
                                  print('object');
                                }
                              },
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor:
                                        Color.fromRGBO(239, 237, 240, 1.0),
                                    child: Icon(
                                      CupertinoIcons.building_2_fill,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text("olx property".toUpperCase(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)))
                                ],
                              ),
                            ),
                          ),
                        ])),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(150),
                child: Container(
                  color: const Color.fromRGBO(250, 250, 250, 1.0),
                  child: Wrap(
                    children: [
                      InkWell(
                        onTap: (() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LocationSelect()),
                            )),
                        child: SafeArea(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 15,
                                height: 50,
                              ),
                              const Icon(Icons.location_on_outlined, size: 25),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    location_name,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(5, 51, 56, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              // alignment: Alignment.bottomRight,
                              const Spacer(),
                              // alignment: Alignment.center ,
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: resWidth,
                                height: 55,
                                child: InkWell(
                                  onTap: () {
                                    if (kDebugMode) {
                                      print("object");
                                    }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Quickfilters()),
                                    );
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
                                        fillColor: Colors.white,
                                        filled: true,
                                        contentPadding: EdgeInsets.all(1),
                                        prefixIcon: Icon(Icons.search),
                                        hoverColor: Colors.amberAccent,
                                        // border:
                                        hintStyle:
                                            TextStyle(color: Colors.black),
                                        hintText:
                                            'Find cars, mobiles, phones and more',
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: InkWell(
                              child: const Icon(
                                Icons.notifications_outlined,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionBtn(),
          bottomNavigationBar: BottomNavigation(),
          body: SingleChildScrollView(
              child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  // SizedBox(width: MediaQuery.of(context).size.width * 1.0,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Stack(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Browse Categories",
                            style: TextStyle(
                                color: Color.fromRGBO(5, 51, 56, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (kDebugMode) {
                            print("detected");
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.03),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AllCatagories()),
                              );
                            },
                            child: const Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                    color: Color.fromRGBO(5, 51, 56, 1),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.150,
                        ),
                        CategoriesCircleAvatar(
                          icon: Icons.phone_android_outlined,
                          onTap: () {
                            print("androidea phonea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Mobiles()),
                              );
                            });
                          },
                          text: "Mobiles",
                          bgcolor: const Color.fromRGBO(141, 241, 238, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.02,
                          margintop: MediaQuery.of(context).size.height * 0.02,
                        ),
                        CategoriesCircleAvatar(
                          icon: CupertinoIcons.car,
                          onTap: () {
                            print("vehiclea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Vehicles()),
                              );
                            });
                          },
                          text: "Vehicles",
                          bgcolor: const Color.fromRGBO(210, 185, 130, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.07,
                          margintop: MediaQuery.of(context).size.height * 0.02,
                        ),
                        CategoriesCircleAvatar(
                          icon: Icons.point_of_sale,
                          onTap: () {
                            print("propertea salea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PropertyforSale()),
                              );
                            });
                          },
                          text: "Property for \n sale",
                          bgcolor: const Color.fromRGBO(35, 229, 216, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.07,
                          margintop: MediaQuery.of(context).size.height * 0.01,
                        ),
                        CategoriesCircleAvatar(
                          icon: Icons.point_of_sale,
                          onTap: () {
                            print("propertea salea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PropertyForRent()),
                              );
                            });
                          },
                          text: "Property for \n rent",
                          bgcolor: const Color.fromRGBO(248, 221, 60, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.07,
                          margintop: MediaQuery.of(context).size.height * 0.01,
                        ),
                        CategoriesCircleAvatar(
                          icon: Icons.desktop_windows,
                          onTap: () {
                            print("propertea salea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Electronics()),
                              );
                            });
                          },
                          text: "Electronics \n & Home ...",
                          bgcolor: const Color.fromRGBO(155, 185, 255, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.07,
                          margintop: MediaQuery.of(context).size.height * 0.01,
                        ),
                        CategoriesCircleAvatar(
                          icon: Icons.electric_bike,
                          onTap: () {
                            print("propertea salea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Bikes()),
                              );
                            });
                          },
                          text: "Bikes",
                          bgcolor: const Color.fromRGBO(255, 100, 92, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.07,
                          margintop: MediaQuery.of(context).size.height * 0.02,
                        ),
                        CategoriesCircleAvatar(
                          icon: Icons.business_sharp,
                          onTap: () {
                            print("propertea salea");
                            Timer(const Duration(microseconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Business()),
                              );
                            });
                          },
                          text: "Business, \n Industrial",
                          bgcolor: const Color.fromRGBO(255, 232, 148, 1.0),
                          marginleft: MediaQuery.of(context).size.width * 0.07,
                          margintop: MediaQuery.of(context).size.height * 0.01,
                        ),
                        CategoriesCircleAvatar(
                            icon: Icons.room_service_sharp,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Services()),
                                );
                              });
                            },
                            text: "Services",
                            bgcolor: const Color.fromRGBO(255, 100, 92, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.02),
                        CategoriesCircleAvatar(
                            icon: Icons.badge,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Jobs()),
                                );
                              });
                            },
                            text: "Jobs",
                            bgcolor: const Color.fromRGBO(205, 220, 255, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.02),
                        CategoriesCircleAvatar(
                            icon: CommunityMaterialIcons.baby_face_outline,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Animals()),
                                );
                              });
                            },
                            text: "Animals",
                            bgcolor: const Color.fromRGBO(141, 241, 238, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.02),
                        CategoriesCircleAvatar(
                            icon: CommunityMaterialIcons.sofa,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Furniture()),
                                );
                              });
                            },
                            text: "Furniture \n & Hom ...",
                            bgcolor: const Color.fromRGBO(210, 185, 130, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.01),
                        CategoriesCircleAvatar(
                            icon: FontAwesomeIcons.shirt,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Fashion()),
                                );
                              });
                            },
                            text: "Fashion & \n beauty",
                            bgcolor: const Color.fromRGBO(35, 229, 216, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.01),
                        CategoriesCircleAvatar(
                            icon: CommunityMaterialIcons.guitar_acoustic,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Books()),
                                );
                              });
                            },
                            text: "Books, \n Sports",
                            bgcolor: const Color.fromRGBO(248, 221, 60, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.01),
                        CategoriesCircleAvatar(
                            icon: CommunityMaterialIcons.baby_bottle,
                            onTap: () {
                              Timer(const Duration(microseconds: 1), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Kids()),
                                );
                              });
                            },
                            text: "Kids",
                            bgcolor: const Color.fromRGBO(155, 185, 225, 1.0),
                            marginleft:
                                MediaQuery.of(context).size.width * 0.08,
                            margintop:
                                MediaQuery.of(context).size.height * 0.02),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            // InkWell(
            //   child: SingleChildScrollView(
            //     child: _items.isNotEmpty
            //         ? GridView.builder(
            //             physics: const ScrollPhysics(),
            //             scrollDirection: Axis.vertical,
            //             shrinkWrap: true,
            //             itemCount: _items.length,
            //             gridDelegate:
            //                 const SliverGridDelegateWithFixedCrossAxisCount(
            //               childAspectRatio: 10.4 / 10.0,
            //               crossAxisCount: 2,
            //             ),
            //             itemBuilder: (BuildContext context, int index) {
            //               return Padding(
            //                   padding: const EdgeInsets.all(5),
            //                   child: InkWell(
            //                     onTap: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                               builder: (context) => AddDetails(
            //                                     des: _items[index]
            //                                         ['desc-----------------++++++---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ription'],
            //                                     imageUrl: _items[index]
            //                                         ['image'],
            //                                     price: _items[index]['price'],
            //                                     slides: [
            //                                       _items[index]['im1'],
            //                                       _items[index]['im2'],
            //                                       _items[index]['im3'],
            //                                       _items[index]['im4'],
            //                                     ],
            //                                     title: _items[index]['title'],
            //                                   )));
            //                     },
            //                     child: Card(
            //                         semanticContainer: true,
            //                         shape: RoundedRectangleBorder(
            //                           borderRadius: BorderRadius.circular(10.0),
            //                         ),
            //                         clipBehavior: Clip.antiAlias,
            //                         child: Column(
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: <Widget>[
            //                             Expanded(
            //                               child: ClipRRect(
            //                                 borderRadius:
            //                                     const BorderRadius.only(
            //                                   topLeft: Radius.circular(8.0),
            //                                   topRight: Radius.circular(8.0),
            //                                 ),
            //                                 // child: Image.network(
            //                                 //   'https://placeimg.com/620/480/any',
            //                                 //   // width: 300,
            //                                 //   height: 100,
            //                                 //   width: MediaQuery.of(context).size.width * 1.0,
            //                                 //   // fit:BoxFit.fill
            //                                 // ),
            //                                 child: Container(
            //                                   width: MediaQuery.of(context)
            //                                       .size
            //                                       .width,
            //                                   height: 150,
            //                                   decoration: BoxDecoration(
            //                                     image: DecorationImage(
            //                                       fit: BoxFit.fill,
            //                                       image: AssetImage(
            //                                           _items[index]['image']),
            //                                     ),
            //                                   ),
            //                                 ),
            //                               ),
            //                               // )
            //                             ),
            //                             Row(
            //                               children: [
            //                                 Padding(
            //                                     padding: const EdgeInsets.only(
            //                                         left: 10.0, top: 10.0),
            //                                     child: Container(
            //                                       width: 163,
            //                                       // color: Colors.black,
            //                                       child: Text(
            //                                         "Very good condition dell 8gb ram, workstation",
            //                                         // _items[index]['title'],
            //                                         maxLines: 2,
            //                                         overflow:
            //                                             TextOverflow.ellipsis,
            //                                         style: const TextStyle(
            //                                             fontSize: 15.0,
            //                                             color: Color.fromRGBO(
            //                                                 5, 51, 56, 1)),
            //                                       ),
            //                                     )),
            //                                 Theme(
            //                                     data: ThemeData(
            //                                         splashColor: Colors.white,
            //                                         highlightColor:
            //                                             Colors.white),
            //                                     child: Align(
            //                                       alignment: Alignment.topRight,
            //                                       child: IconButton(
            //                                           onPressed: () {
            //                                             setState(() {
            //                                               favico =
            //                                                   Icons.favorite;
            //                                             });
            //                                           },
            //                                           icon: Icon(
            //                                             favico,
            //                                             size: 15,
            //                                           )),
            //                                     ))
            //                               ],
            //                             ),
            //                             Padding(
            //                                 padding: const EdgeInsets.only(
            //                                     left: 8.0,
            //                                     top: 8.0,
            //                                     bottom: 8.0),
            //                                 child: Text(
            //                                   "Rs: ${_items[index]['price']}",
            //                                   maxLines: 2,
            //                                   overflow: TextOverflow.ellipsis,
            //                                   style: const TextStyle(
            //                                       fontSize: 15.0,
            //                                       color: Color.fromRGBO(
            //                                           5, 51, 56, 1),
            //                                       fontWeight: FontWeight.w900),
            //                                 )),
            //                           ],
            //                         )),
            //                   ));
            //             },
            //           )
            //         : null,
            //   ),
            // ),
            // ElevatedButton(
            //   child: const Text('Load Data'),
            //   onPressed: abc,
            // ),
      //       StreamBuilder<QuerySnapshot>(
      // stream: _usersStream,
      // builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //   if (snapshot.hasError) {
      //     return const Text('Something went wrong');
      //   }

      //   if (snapshot.connectionState == ConnectionState.waiting) {
      //     return const Text("Loading");
      //   }

      //   return SizedBox(
      //     height: 100,
      //     child: Padding(
      //                         padding: const EdgeInsets.all(5),
      //                         child: InkWell(
      //                           // onTap: () {
      //                           //   Navigator.push(
      //                           //       context,
      //                           //       MaterialPageRoute(
      //                           //           builder: (context) => AddDetails(
      //                           //                 des: _items[index]
      //                           //                     ['description'],
      //                           //                 imageUrl: _items[index]
      //                           //                     ['image'],
      //                           //                 price: _items[index]['price'],
      //                           //                 slides: [
      //                           //                   _items[index]['im1'],
      //                           //                   _items[index]['im2'],
      //                           //                   _items[index]['im3'],
      //                           //                   _items[index]['im4'],
      //                           //                 ],
      //                           //                 title: _items[index]['title'],
      //                           //               )));
      //                           // },
      //                           child: Card(
      //                               semanticContainer: true,
      //                               shape: RoundedRectangleBorder(
     
      //                                 borderRadius: BorderRadius.circular(10.0),
      //                               ),
      //                               clipBehavior: Clip.antiAlias,
      //                               child: Column(
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: <Widget>[
      //                                   Expanded(
      //                                     child: ClipRRect(
      //                                       borderRadius:
      //                                           const BorderRadius.only(
      //                                         topLeft: Radius.circular(8.0),
      //                                         topRight: Radius.circular(8.0),
      //                                       ),
      //                                       // child: Image.network(
      //                                       //   'https://placeimg.com/620/480/any',
      //                                       //   // width: 300,
      //                                       //   height: 100,
      //                                       //   width: MediaQuery.of(context).size.width * 1.0,
      //                                       //   // fit:BoxFit.fill
      //                                       // ),
      //                                       child: Container(
      //                                         width: MediaQuery.of(context)
      //                                             .size
      //                                             .width,
      //                                         height: 150,
      //                                         decoration: BoxDecoration(
      //                                           image: DecorationImage(
      //                                             fit: BoxFit.fill,
      //                                             image: NetworkImage(
      //                                                 snapshot.data!.docs[0]['images'][0].toString()),
      //                                           ),
      //                                         ),
      //                                       ),
      //                                     ),
      //                                     // )
      //                                   ),
      //                                   Row(
      //                                     children: [
      //                                       Padding(
      //                                           padding: const EdgeInsets.only(
      //                                               left: 10.0, top: 10.0),
      //                                           child: Container(
      //                                             width: 163,
      //                                             // color: Colors.black,
      //                                             child: Text(
      //                                               // "Very good condition dell 8gb ram, workstation",
      //                                               snapshot.data!.docs[2]['data']['ad-title'].toString(),
      //                                               maxLines: 2,
      //                                               overflow:
      //                                                   TextOverflow.ellipsis,
      //                                               style: const TextStyle(
      //                                                   fontSize: 15.0,
      //                                                   color: Color.fromRGBO(
      //                                                       5, 51, 56, 1)),
      //                                             ),
      //                                           )),
      //                                       Theme(
      //                                           data: ThemeData(
      //                                               splashColor: Colors.white,
      //                                               highlightColor:
      //                                                   Colors.white),
      //                                           child: Align(
      //                                             alignment: Alignment.topRight,
      //                                             child: IconButton(
      //                                                 onPressed: () {
      //                                                   setState(() {
      //                                                     favico =
      //                                                         Icons.favorite;
      //                                                   });
      //                                                 },
      //                                                 icon: Icon(
      //                                                   favico,
      //                                                   size: 15,
      //                                                 )),
      //                                           ))
      //                                     ],
      //                                   ),
      //                                   Padding(
      //                                       padding: const EdgeInsets.only(
      //                                           left: 8.0,
      //                                           top: 8.0,
      //                                           bottom: 8.0),
      //                                       child: Text(
      //                                         // "Rs: ${snapshot.data!.docs[0]['price'].toString()}",
      //                                         "Rs: ",
      //                                         maxLines: 2,
      //                                         overflow: TextOverflow.ellipsis,
      //                                         style: const TextStyle(
      //                                             fontSize: 15.0,
      //                                             color: Color.fromRGBO(
      //                                                 5, 51, 56, 1),
      //                                             fontWeight: FontWeight.w900),
      //                                       )),
      //                                 ],
      //                               )),
      //                         ))
      //             //  ListTile(
      //             //   title: Text(data['images'][0].toString()),
      //             //   subtitle: Text(data['data']['description'].toString() ?? ''),
      //             );
      //           })
           StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
            return SingleChildScrollView(
              child: SizedBox(
                // height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        // itemCount: _items.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 10.5 / 12,
                          crossAxisCount: 2,
                            ),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(5),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AddDetails(
                                              photo_url: snapshot.data!.docs[index]['data']['pro_photo'],
                                              profile_name: snapshot.data!.docs[index]['data']['pro_name'],
                                              details: snapshot.data!.docs[index]['data']['details'] as Map,
                                                  des: snapshot.data!.docs[index]['data']['description'].toString(),
                                                  imageUrl: snapshot.data!.docs[index]['images'][0].toString(),
                                                  price: snapshot.data!.docs[index]['data']['price'].toString(),
                                                  slides: snapshot.data!.docs[index]['images'],
                                                  title: snapshot.data!.docs[index]['data']['ad-title'].toString(), 
                                                  category: snapshot.data!.docs[index]['data']['category'].toString(),
                                                )));
                                  },
                                  child: Card(
                                      semanticContainer: true,
                                      shape: RoundedRectangleBorder(
     
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: SizedBox(
                                        height: 100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(8.0),
                                                  topRight: Radius.circular(8.0),
                                                ),
                                                // child: Image.network(
                                                //   'https://placeimg.com/620/480/any',
                                                //   // width: 300,
                                                //   height: 100,
                                                //   width: MediaQuery.of(context).size.width * 1.0,
                                                //   // fit:BoxFit.fill
                                                // ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context).size.height,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: NetworkImage(
                                                          snapshot.data!.docs[index]['images'][0].toString()),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // )
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 10.0, top: 10.0),
                                                    child: Container(
                                                      width: 163,
                                                      // color: Colors.black,
                                                      child: Text(
                                                        // "Very good condition dell 8gb ram, workstation",
                                                        snapshot.data!.docs[index]['data']['ad-title'].toString(),
                                                        maxLines: 2,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        style: const TextStyle(
                                                            fontSize: 15.0,
                                                            color: Color.fromRGBO(
                                                                5, 51, 56, 1)),
                                                      ),
                                                    )),
                                                Theme(
                                                    data: ThemeData(
                                                        splashColor: Colors.white,
                                                        highlightColor:
                                                            Colors.white),
                                                    child: Align(
                                                      alignment: Alignment.topRight,
                                                      child: IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              favico =
                                                                  Icons.favorite;
                                                            });
                                                          },
                                                          icon: Icon(
                                                            favico,
                                                            size: 15,
                                                          )),
                                                    ))
                                              ],
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0,
                                                    top: 8.0,
                                                    bottom: 8.0),
                                                child: Text(
                                                  "Rs: ${snapshot.data!.docs[index]['data']['price'].toString()}",
                                                  // "Rs: ",
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 15.0,
                                                      color: Color.fromRGBO(
                                                          5, 51, 56, 1),
                                                      fontWeight: FontWeight.w900),
                                                )),
                                          ],
                                        ),
                                      )),
                ),
            )),
              ));

            // subtitle: Text(data['company']),
          })
                // .toList()
                // .cast(),
          // ),
        // );
      // },
    // )
            // Text(FirebaseAuth.instance.currentUser!.photoURL.toString())
          // ])),
          // bottomNavigationBar: BottomNavigationBar(
          //   type: BottomNavigationBarType.fixed,
          //   currentIndex: _currentIndex,
          //   backgroundColor: colorScheme.surface,
          //   selectedItemColor: colorScheme.onSurface,
          //   unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          //   selectedLabelStyle: textTheme.caption,
          //   unselectedLabelStyle: textTheme.caption,
          //   onTap: (value) {
          //     // Respond to item press.
          //     setState(() => _currentIndex = value);
          //   },
          // items: [
          //   BottomNavigationBarItem(
          //     label: 'HOME',
          //     icon: Icon(Icons.home),
          //   ),
          //   BottomNavigationBarItem(
          //     label: 'CHATS',
          //     icon: Icon(Icons.chat),
          //   ),
          //   BottomNavigationBarItem(
          //     label: 'MY ADS',
          //     icon: Icon(Icons.favorite_border),
          //   ),
          //   BottomNavigationBarItem(
          //     label: 'ACCOUNT',
          //     icon: Icon(Icons.supervised_user_circle),
          //   ),
          //   // BottomNavigationBarItem(
          //   //   label: 'ACCOUNT',
          //   //   icon: Icon(Icons.supervised_user_circle),
          //   // ),
          // ],
          // ),
          //      bottomNavigationBar: BottomAppBar(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Expanded(child: IconButton(icon: Icon(Icons.home), onPressed: () {  },),),
          //       Expanded(child: IconButton(icon: Icon(Icons.show_chart), onPressed: () {  },),),
          //       // Expanded(child: const Text('')),
          //       Expanded(child: IconButton(icon: Icon(Icons.tab), onPressed: () {  },),),
          //       Expanded(child: IconButton(icon: Icon(Icons.settings), onPressed: () {  },),),
          //     ],
          //   ),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: FloatingActionButton(onPressed: (){}),
]        ))));
  }
}
