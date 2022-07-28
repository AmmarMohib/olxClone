import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:olx_clone/commons/custom_avatar.dart';

class AllCatagories extends StatefulWidget {
  const AllCatagories({Key? key}) : super(key: key);

  @override
  State<AllCatagories> createState() => _AllCatagoriesState();
}

class _AllCatagoriesState extends State<AllCatagories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(CupertinoIcons.back,
                color: Color.fromRGBO(5, 51, 56, 1)),
          ),
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
          elevation: 0,
          title: const Text(
            "All categories",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(5, 51, 56, 1)),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.06),
                  child: const Text(
                    "Popular",
                    style: TextStyle(
                        color: Color.fromRGBO(5, 51, 56, 1),
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                AllCategoriesCircleAvatar(
                  icon: Icons.phone_android_outlined,
                  onTap: () {
                    print("androidea phonea");
                  },
                  text: "Mobiles",
                  bgcolor: const Color.fromRGBO(141, 241, 238, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                AllCategoriesCircleAvatar(
                  icon: CupertinoIcons.car,
                  onTap: () {
                    print("vehiclea");
                  },
                  text: "Vehicles",
                  bgcolor: const Color.fromRGBO(210, 185, 130, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                AllCategoriesCircleAvatar(
                  icon: Icons.point_of_sale,
                  onTap: () {
                    print("propertea salea");
                  },
                  text: "Property for sale",
                  bgcolor: const Color.fromRGBO(35, 229, 216, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                AllCategoriesCircleAvatar(
                  icon: Icons.point_of_sale,
                  onTap: () {
                    print("propertea salea");
                  },
                  text: "Property for rent",
                  bgcolor: const Color.fromRGBO(248, 221, 60, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.06),
                  child: const Text(
                    "Others",
                    style: TextStyle(
                        color: Color.fromRGBO(5, 51, 56, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                AllCategoriesCircleAvatar(
                  icon: Icons.desktop_windows,
                  onTap: () {
                    print("propertea salea");
                  },
                  text: "Electronics & Home Appliences",
                  bgcolor: const Color.fromRGBO(155, 185, 255, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                AllCategoriesCircleAvatar(
                  icon: Icons.electric_bike,
                  onTap: () {
                    print("propertea salea");
                  },
                  text: "Bikes",
                  bgcolor: const Color.fromRGBO(255, 100, 92, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                AllCategoriesCircleAvatar(
                  icon: Icons.business_sharp,
                  onTap: () {
                    print("propertea salea");
                  },
                  text: "Business, Industrial & Agriculture",
                  bgcolor: const Color.fromRGBO(255, 232, 148, 1.0),
                  marginleft: MediaQuery.of(context).size.width * 0.07,
                  margintop: MediaQuery.of(context).size.height * 0.07,
                ),
                AllCategoriesCircleAvatar(
                    icon: Icons.room_service_sharp,
                    onTap: () {},
                    text: "Services",
                    bgcolor: const Color.fromRGBO(255, 100, 92, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
                AllCategoriesCircleAvatar(
                    icon: Icons.badge,
                    onTap: () {},
                    text: "Jobs",
                    bgcolor: const Color.fromRGBO(205, 220, 255, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
                AllCategoriesCircleAvatar(
                    icon: CommunityMaterialIcons.baby_face_outline,
                    onTap: () {},
                    text: "Animals",
                    bgcolor: const Color.fromRGBO(141, 241, 238, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
                AllCategoriesCircleAvatar(
                    icon: CommunityMaterialIcons.sofa,
                    onTap: () {},
                    text: "Furniture & Home Decor",
                    bgcolor: const Color.fromRGBO(210, 185, 130, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
                AllCategoriesCircleAvatar(
                    icon: FontAwesomeIcons.shirt,
                    onTap: () {},
                    text: "Fashion & beauty",
                    bgcolor: const Color.fromRGBO(35, 229, 216, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
                AllCategoriesCircleAvatar(
                    icon: CommunityMaterialIcons.guitar_acoustic,
                    onTap: () {},
                    text: "Books, Sports",
                    bgcolor: const Color.fromRGBO(248, 221, 60, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
                AllCategoriesCircleAvatar(
                    icon: CommunityMaterialIcons.baby_bottle,
                    onTap: () {},
                    text: "Kids",
                    bgcolor: const Color.fromRGBO(155, 185, 225, 1.0),
                    marginleft: MediaQuery.of(context).size.width * 0.07,
                    margintop: MediaQuery.of(context).size.height * 0.07),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
