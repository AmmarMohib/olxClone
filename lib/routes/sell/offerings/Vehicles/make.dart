// import 'package:flutter/material.dart';
// class SelectMake extends StatefulWidget {
//   const SelectMake({super.key});

//   @override
//   State<SelectMake> createState() => _SelectMakeState();
// }

// class _SelectMakeState extends State<SelectMake> {
//   List carBrands = [
//     "Adam",
//     "Audi",
//     "BAIC",
//     "BMW",
//     "Bentley",
//     "Buick",
//     "Cadlic",
//     "Changan",
//     "Chery",
//     "Chevrolet",
//     "Chrysler",
//     "classic & Antiques",
//     "DFSK",
//     "Daewoo",
//     "Daihatsu",
//     "Datsun",
//     "Dodge",
//     "Dongfeng",
//     "FAW",
//     "Fiat",
//     "Fiat",
//     "Ford",
//     "GMC",
//     "Haval",
//     "Hino",
//     "Honda",
//     "Hummer",
//     "Hyundai",
//     "Isuzu",
//     "JAC",
//     "JW Fortland",
//     "Jaguar",
//     "Jeep",
//     "Kia",
//     "Land Rover",
//     "Lexus",
//     "MFg",
//     "",
//     "",
//     "",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(242, 244, 245, 1.0),
//           elevation: 0,
//           leading: IconButton(
//               icon: Icon(Icons.close,
//                   color: Color.fromRGBO(51, 88, 92, 1.0), size: 30),
//               onPressed: (() {
//                 Navigator.pop(context);
//               })),
//           title: Text(
//             "Choose Brand",
//             style: TextStyle(
//                 color: Color.fromRGBO(51, 88, 92, 1.0),
//                 fontWeight: FontWeight.w800),
//           ),
//         ),
//         backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               widget.category == "tablets"
//                   ? SizedBox(
//                       height: MediaQuery.of(context).size.height,
//                       child: ListView.builder(
//                           itemCount: _tabletsBrands.length,
//                           itemBuilder: (context, index) {
//                             return CataTxt(
//                               txt: _tabletsBrands[index],
//                               func: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => MobilesDetails(
//                                               brand: _tabletsBrands[index],
//                                               category: widget.category,
//                                             )));
//                               },
//                               category: "",
//                               showico: false,
//                               color: Color.fromRGBO(5, 51, 56, 1),
//                             );
//                           }),
//                     )
//                   : Container(),
//               widget.category == "mobile phones"
//                   ? SizedBox(
//                       height: MediaQuery.of(context).size.height,
//                       child: ListView.builder(
//                           itemCount: _mobileBrands.length,
//                           itemBuilder: (context, index) {
//                             return CataTxt(
//                               txt: _mobileBrands[index],
//                               func: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => MobilesDetails(
//                                               brand: _mobileBrands[index],
//                                               category: widget.category,
//                                             )));
//                               },
//                               category: "",
//                               showico: false,
//                               color: Color.fromRGBO(5, 51, 56, 1),
//                             );
//                           }),
//                     )
//                   : Container(),
//               widget.category == "smart watches"
//                   ? SizedBox(
//                       height: MediaQuery.of(context).size.height,
//                       child: ListView.builder(
//                           itemCount: _smartWatchesBrands.length,
//                           itemBuilder: (context, index) {
//                             return CataTxt(
//                               txt: _smartWatchesBrands[index],
//                               func: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => MobilesDetails(
//                                               brand: _smartWatchesBrands[index],
//                                               category: widget.category,
//                                             )));
//                               },
//                               category: "",
//                               showico: false,
//                               color: Color.fromRGBO(5, 51, 56, 1),
//                             );
//                           }),
//                     )
//                   : Container(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
