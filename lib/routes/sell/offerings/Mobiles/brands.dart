import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';
import 'package:olx_clone/routes/home/categoriesPage/mobile.dart';
import 'package:olx_clone/routes/sell/offerings/Mobiles/mobiles.dart';

class SelectBrands extends StatefulWidget {
  final String category;
  const SelectBrands({super.key, required this.category});

  @override
  State<SelectBrands> createState() => _SelectBrandsState();
}

class _SelectBrandsState extends State<SelectBrands> {
  final List _mobileBrands = [
    "Acer",
    "Alcatel",
    "Apple iphone",
    "Asus",
    "BlackBerry",
    "Calme",
    "Club",
    "G'five",
    "Google",
    "Gright",
    "Haier",
    "Honor",
    "HTC",
    "Huawei",
    "iNew",
    "Infinix",
    "Lava",
    "Lenovo",
    "LG",
    "Meizu",
    "Mobilink JazzX",
    "Motorola",
    "Nokia",
    "One Plus",
    "OPPO",
    "Panasonic",
    "QMobile",
    "Realme",
    "RIVO",
    "Samsung Mobile",
    "Sony",
    "Sony Ericsson",
    "Tecno",
    "Vivo",
    "VOICE",
    "Xiaomi",
    "Zte",
    "Other Mobiles"
  ];
  final List _tabletsBrands = [
    "Apple",
    "Dany Tabs",
    "Huawei",
    "Lenovo",
    "Amazon",
    "Asus",
    "Dell",
    "Alcatol",
    "Huion",
    "Wacom",
    "Acer",
    "Honor",
    "RCA",
    "Mione",
    "Q Tabs",
    "Samsung",
    "Other Tablets"
  ];
  final List _smartWatchesBrands = [
    "Apple",
    "Samsung",
    "MI",
    "Huawei",
    "Haylou",
    "Amazfit",
    "Realme",
    "Garmin",
    "Fitbit",
    "Honor",
    "Oppo",
    "Lenovo",
    "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(242, 244, 245, 1.0),
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.close,
                  color: Color.fromRGBO(51, 88, 92, 1.0), size: 30),
              onPressed: (() {
                Navigator.pop(context);
              })),
          title: Text(
            "Choose Brand",
            style: TextStyle(
                color: Color.fromRGBO(51, 88, 92, 1.0),
                fontWeight: FontWeight.w800),
          ),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              widget.category == "tablets"
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          itemCount: _tabletsBrands.length,
                          itemBuilder: (context, index) {
                            return CataTxt(
                              txt: _tabletsBrands[index],
                              func: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MobilesDetails(brand:  _tabletsBrands[index],category: widget.category,)));
                              },
                              category: "",
                              showico: false,
                              color: Color.fromRGBO(5, 51, 56, 1),
                            );
                          }),
                    )
                  : Container(),
              widget.category == "mobile phones"
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          itemCount: _mobileBrands.length,
                          itemBuilder: (context, index) {
                            return CataTxt(
                              txt: _mobileBrands[index],
                              func: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MobilesDetails(brand:  _mobileBrands[index],category: widget.category,)));
                              },
                              category: "",
                              showico: false,
                              color: Color.fromRGBO(5, 51, 56, 1),
                            );
                          }),
                    )
                  : Container(),
              widget.category == "smart watches"
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          itemCount: _smartWatchesBrands.length,
                          itemBuilder: (context, index) {
                            return CataTxt(
                              txt: _smartWatchesBrands[index],
                              func: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MobilesDetails(brand:  _smartWatchesBrands[index],category: widget.category,)));
                              },
                              category: "",
                              showico: false,
                              color: Color.fromRGBO(5, 51, 56, 1),
                            );
                          }),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
