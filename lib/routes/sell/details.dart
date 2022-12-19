import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_radio.dart';
import 'package:olx_clone/routes/sell/Mobiles/accessories.dart';
import 'package:olx_clone/routes/sell/Mobiles/mobiles.dart';

class IncludeDetails extends StatefulWidget {
  final String category;
  const IncludeDetails({super.key, required this.category});

  @override
  State<IncludeDetails> createState() => _IncludeDetailsState();
}

class _IncludeDetailsState extends State<IncludeDetails> {
  // List<RadioModel> sampleData = <RadioModel>[];
  int _value = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // sampleData.add(new RadioModel(false, 'A', 'April 18'));
    // sampleData.add(new RadioModel(false, 'B', 'April 17'));
    // sampleData.add(new RadioModel(false, 'C', 'April 16'));
    // sampleData.add(new RadioModel(false, 'D', 'April 15'));
  }

  @override
  Widget build(BuildContext context) {
    print(widget.category);
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       leading: IconButton(
    //         onPressed: (() => Navigator.pop(context)),
    //         icon: const Icon(Icons.close, color: Color.fromRGBO(5, 51, 56, 1)),
    //       ),
    //       backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
    //       elevation: 0,
    //       title: const Text(
    //         "Include some details",
    //         style: TextStyle(
    //             fontSize: 18,
    //             fontWeight: FontWeight.w600,
    //             color: Color.fromRGBO(5, 51, 56, 1)),
    //       ),
    //     ),
    //     backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           const SizedBox(
    //             height: 10,
    //           ),
    //           Center(
    //             child: SizedBox(
    //               width: MediaQuery.of(context).size.width * 0.93,
    //               child: Container(
    //                 color: const Color.fromRGBO(250, 250, 250, 1.0),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const SizedBox(
    //                       height: 10,
    //                     ),
    //                     Row(
    //                       children: [
    //                         const SizedBox(
    //                           width: 5,
    //                         ),
    //                         const Text(
    //                           "UPLOAD UP TO 20 PHOTOS",
    //                           style: TextStyle(
    //                               fontSize: 15,
    //                               fontWeight: FontWeight.w500,
    //                               color: Color.fromRGBO(5, 51, 56, 1)),
    //                         ),
    //                         const Spacer(),
    //                         const Icon(
    //                           Icons.arrow_forward_ios_rounded,
    //                           size: 15,
    //                         ),
    //                         const SizedBox(
    //                           width: 5,
    //                         )
    //                       ],
    //                     ),
    //                     const SizedBox(
    //                       height: 10,
    //                     ),
    //                     // Image(image: AssetImage("assets/images/upload_logo.png"), width: MediaQuery.of(context).size.width * 0.9,)
    //                     Container(
    //                         height: 150,
    //                         foregroundDecoration: const BoxDecoration(
    //                             image: DecorationImage(
    //                                 image: AssetImage(
    //                                     "assets/images/upload_logo.png"),
    //                                 fit: BoxFit.fill))),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15, top: 30),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const Text(
    //                       "Price *",
    //                       style: TextStyle(
    //                           color: Color.fromRGBO(12, 56, 61, 1.0),
    //                           fontSize: 12),
    //                     ),
    //                     const SizedBox(
    //                       height: 7,
    //                     ),
    //                     SizedBox(
    //                       width: MediaQuery.of(context).size.width * 0.93,
    //                       height: 50,
    //                       child: const TextField(
    //                         decoration: InputDecoration(
    //                           focusedBorder: OutlineInputBorder(
    //                               borderSide: BorderSide(
    //                                   width: 1,
    //                                   color: Color.fromRGBO(116, 205, 202, 1.0))),
    //                           border: OutlineInputBorder(),
    //                           // labelText: 'Enter address',
    //                           // hintText: 'Enter the name of the address'
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15, top: 30),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const Text(
    //                       "Brand *",
    //                       style: TextStyle(
    //                           color: Color.fromRGBO(12, 56, 61, 1.0),
    //                           fontSize: 15,
    //                           fontWeight: FontWeight.bold),
    //                     ),
    //                     // SizedBox(
    //                     //   height: 7,
    //                     // ),
    //                     Container(
    //                         margin: const EdgeInsets.only(left: 0, top: 10),
    //                         child: SizedBox(
    //                           width: MediaQuery.of(context).size.width * 0.93,
    //                           height: 55,
    //                           child: Theme(
    //                             data: ThemeData(
    //                               splashColor: Colors.transparent,
    //                               highlightColor: Colors.transparent,
    //                             ),
    //                             child: InkWell(
    //                               // splashFactory: NoSplash.splashFactory,
    //                               onTap: () {
    //                                 if (kDebugMode) {
    //                                   print("object");
    //                                 }
    //                                 // Navigator.push(
    //                                 // context,
    //                                 // MaterialPageRoute(
    //                                 // builder: (context) => const AllCatagories()),
    //                                 // );
    //                               },
    //                               child: const IgnorePointer(
    //                                 child: TextField(
    //                                   // style: TextStyle(backgroundColor: Colors.amber),
    //                                   // readOnly: true,
    //                                   // expands: true,
    //                                   // minLines: 2,
    //                                   // maxLines: 2,
    //                                   textAlignVertical: TextAlignVertical.center,
    //                                   // controller: loc,
    //                                   decoration: InputDecoration(
    //                                     border: InputBorder.none,
    //                                     fillColor:
    //                                         Color.fromRGBO(235, 238, 239, 1.0),
    //                                     filled: true,
    //                                     contentPadding: EdgeInsets.all(10),
    //                                     // prefixIcon: Icon(Icons.search),
    //                                     suffixIcon: Icon(Icons.arrow_forward_ios),
    //                                     hoverColor: Colors.amberAccent,
    //                                     // border:
    //                                     hintStyle: TextStyle(
    //                                         color: Color.fromRGBO(0, 47, 52, 1.0),
    //                                         fontWeight: FontWeight.bold),
    //                                     hintText: 'None',
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         )),
    //                   ],
    //                 ),
    //               ),
    //               // Padding(
    //               //   padding: EdgeInsets.only(left: 15, top: 30),
    //               //   child: Column(
    //               //     crossAxisAlignment: CrossAxisAlignment.start,
    //               //     children: [
    //               //       Text(
    //               //         "Address line 1 *",
    //               //         style: TextStyle(
    //               //             color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
    //               //       ),
    //               //       SizedBox(
    //               //         height: 7,
    //               //       ),
    //               //       SizedBox(
    //               //         width: MediaQuery.of(context).size.width * 0.94,
    //               //         child: TextField(
    //               //           decoration: InputDecoration(
    //               //              focusedBorder: OutlineInputBorder(
    //               //               borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
    //               //            ),
    //               //               border: OutlineInputBorder(),
    //               //               labelText: 'Enter street',
    //               //               hintText: 'Enter your street'),
    //               //         ),
    //               //       ),
    //               //     ],
    //               //   ),
    //               // ),
    //               // Padding(
    //               //   padding: EdgeInsets.only(left: 15, top: 30),
    //               //   child: Column(
    //               //     crossAxisAlignment: CrossAxisAlignment.start,
    //               //     children: [
    //               //       Text(
    //               //         "Address line 2",
    //               //         style: TextStyle(
    //               //             color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
    //               //       ),
    //               //       SizedBox(
    //               //         height: 7,
    //               //       ),
    //               //       SizedBox(
    //               //         width: MediaQuery.of(context).size.width * 0.94,
    //               //         child: TextField(

    //               //           decoration: InputDecoration(
    //               //              focusedBorder: OutlineInputBorder(
    //               //               borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
    //               //            ),
    //               //               border: OutlineInputBorder(),
    //               //               labelText: 'Enter building number',
    //               //               hintText: 'Enter your building number'),
    //               //         ),
    //               //       ),
    //               //     ],
    //               //   ),
    //               // ),
    //               // Padding(
    //               //   padding: EdgeInsets.only(left: 15, top: 30),
    //               //   child: Column(
    //               //     crossAxisAlignment: CrossAxisAlignment.start,
    //               //     children: [
    //               //       Text(
    //               //         "Notes",
    //               //         style: TextStyle(
    //               //             color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
    //               //       ),
    //               //       SizedBox(
    //               //         height: 7,
    //               //       ),
    //               //       SizedBox(
    //               //         width: MediaQuery.of(context).size.width * 0.94,
    //               //         child:  TextField(
    //               //         // controller: textarea,
    //               //         keyboardType: TextInputType.multiline,
    //               //         maxLines: 4,
    //               //         decoration: InputDecoration(
    //               //            hintText: "notes",
    //               //            border: OutlineInputBorder(),
    //               //            focusedBorder: OutlineInputBorder(
    //               //               borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
    //               //            )
    //               //         ),

    //               //      ),
    //               //       ),
    //               //     ],
    //               //   ),
    //               // ),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 15, top: 30),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const Text(
    //                       "Condition *",
    //                       style: TextStyle(
    //                           color: Color.fromRGBO(12, 56, 61, 1.0),
    //                           fontSize: 15,
    //                           fontWeight: FontWeight.bold),
    //                     ),
    //                     // SizedBox(
    //                     //   height: 7,
    //                     // ),
    //                     Container(
    //                         margin: const EdgeInsets.only(left: 0, top: 10),
    //                         child: Wrap(
    //                           children: [
    //                             // CustomRadioBtn(index: 1, text: "NEW"),
    //                             // SizedBox(width: 10,),
    //                             // CustomRadioBtn(index: 2, text: "OPEN BOX"),
    //                             // SizedBox(width: 10,),
    //                             // CustomRadioBtn(index: 3, text: "REFURBISHED"),
    //                             // SizedBox(width: 10,),
    //                             // CustomRadioBtn(index: 4, text: "USED"),
    //                             // SizedBox(width: 10,),
    //                             // CustomRadioBtn(index: 5, text: "FOR PARTS OR MOT NOT WORKING"),
    //                             // SizedBox(width: 10,),
    //                             MyRadioListTile<int>(
    //                               value: 1,
    //                               groupValue: _value,
    //                               leading: 'new',
    //                               onChanged: (value) =>
    //                                   setState(() => _value = value!),
    //                             ),
    //                             const SizedBox(
    //                               width: 10,
    //                             ),
    //                             MyRadioListTile<int>(
    //                               value: 2,
    //                               groupValue: _value,
    //                               leading: 'open box',
    //                               onChanged: (value) =>
    //                                   setState(() => _value = value!),
    //                             ),
    //                             const SizedBox(
    //                               width: 10,
    //                             ),
    //                             MyRadioListTile<int>(
    //                               value: 3,
    //                               groupValue: _value,
    //                               leading: 'refurbished',
    //                               onChanged: (value) =>
    //                                   setState(() => _value = value!),
    //                             ),
    //                             const SizedBox(
    //                               width: 10,
    //                             ),
    //                             MyRadioListTile<int>(
    //                               value: 4,
    //                               groupValue: _value,
    //                               leading: 'used',
    //                               onChanged: (value) =>
    //                                   setState(() => _value = value!),
    //                             ),
    //                             const SizedBox(
    //                               width: 10,
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(top: 8.0),
    //                               child: MyRadioListTile<int>(
    //                                 value: 5,
    //                                 groupValue: _value,
    //                                 leading: 'for parts or not working',
    //                                 onChanged: (value) =>
    //                                     setState(() => _value = value!),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(top: 30),
    //                               child: Column(
    //                                 crossAxisAlignment: CrossAxisAlignment.start,
    //                                 children: [
    //                                   const Text(
    //                                     "Ad title *",
    //                                     style: TextStyle(
    //                                         color:
    //                                             Color.fromRGBO(12, 56, 61, 1.0),
    //                                         fontSize: 12,
    //                                         fontWeight: FontWeight.w500),
    //                                   ),
    //                                   const SizedBox(
    //                                     height: 7,
    //                                   ),
    //                                   SizedBox(
    //                                     width: MediaQuery.of(context).size.width *
    //                                         0.94,
    //                                     child: const TextField(
    //                                       decoration: InputDecoration(
    //                                         focusedBorder: OutlineInputBorder(
    //                                             borderSide: BorderSide(
    //                                                 width: 1,
    //                                                 color: Color.fromRGBO(
    //                                                     116, 205, 202, 1.0))),
    //                                         border: OutlineInputBorder(),
    //                                         // labelText: 'Enter street',
    //                                         // hintText: 'Enter your street'),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(top: 30),
    //                               child: Column(
    //                                 crossAxisAlignment: CrossAxisAlignment.start,
    //                                 children: [
    //                                   const Text(
    //                                     "Describe what you are selling *",
    //                                     style: TextStyle(
    //                                         color:
    //                                             Color.fromRGBO(12, 56, 61, 1.0),
    //                                         fontSize: 12,
    //                                         fontWeight: FontWeight.w500),
    //                                   ),
    //                                   const SizedBox(
    //                                     height: 7,
    //                                   ),
    //                                   SizedBox(
    //                                     width: MediaQuery.of(context).size.width *
    //                                         0.94,
    //                                     child: const TextField(
    //                                       decoration: InputDecoration(
    //                                         focusedBorder: OutlineInputBorder(
    //                                             borderSide: BorderSide(
    //                                                 width: 1,
    //                                                 color: Color.fromRGBO(
    //                                                     116, 205, 202, 1.0))),
    //                                         border: OutlineInputBorder(),
    //                                         // labelText: 'Enter building number',
    //                                         // hintText:
    //                                         // 'Enter your building number'),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(top: 30),
    //                               child: SizedBox(
    //                                     width: MediaQuery.of(context).size.width *
    //                                         0.94,
    //                                     child: IgnorePointer(
    //                                       child: const TextField(
    //                                         decoration: InputDecoration(
    //                                           focusedBorder: OutlineInputBorder(
    //                                               borderSide: BorderSide(
    //                                                   width: 1,
    //                                                   color: Color.fromRGBO(
    //                                                                       116, 205, 202, 1.0))),
    //                                           border: OutlineInputBorder(),
    //                                           // labelText: 'Enter building number',
    //                                           hintText: 'Location',
    //                                           suffixIcon: Icon(Icons.arrow_forward_ios_rounded, size: 15,color: Colors.black),
    //                                           hintStyle: TextStyle(
    //                                             color: Colors.black
    //                                           ),
    //                                           // semanticCounterText: ""
    //                                           // prefixText: "jojoo"
    //                                           ),
    //                                         // ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                             ),

    //                             // Container(
    //                             //     margin:
    //                             //         const EdgeInsets.only(left: 0, top: 10),
    //                             //     child: SizedBox(
    //                             //       width: MediaQuery.of(context).size.width *
    //                             //           0.93,
    //                             //       height: 55,
    //                             //       child: Theme(
    //                             //         data: ThemeData(
    //                             //           splashColor: Colors.transparent,
    //                             //           highlightColor: Colors.transparent,
    //                             //         ),
    //                             //         child: InkWell(
    //                             //           // splashFactory: NoSplash.splashFactory,
    //                             //           onTap: () {
    //                             //             if (kDebugMode) {
    //                             //               print("object");
    //                             //             }
    //                             //             // Navigator.push(
    //                             //             // context,
    //                             //             // MaterialPageRoute(
    //                             //             // builder: (context) => const AllCatagories()),
    //                             //             // );
    //                             //           },
    //                             //           child: const IgnorePointer(
    //                             //             child: TextField(
    //                             //               // style: TextStyle(backgroundColor: Colors.amber),
    //                             //               // readOnly: true,
    //                             //               // expands: true,
    //                             //               // minLines: 2,
    //                             //               // maxLines: 2,
    //                             //               textAlignVertical:
    //                             //                   TextAlignVertical.center,
    //                             //               // controller: loc,
    //                             //               decoration: InputDecoration(
    //                             //                 // border: InputBorder.none,
    //                             //                 // fillColor: Color.fromRGBO(
    //                             //                     // 235, 238, 239, 1.0),
    //                             //                 filled: true,
    //                             //                 contentPadding:
    //                             //                     EdgeInsets.all(10),
    //                             //                 // prefixIcon: Icon(Icons.search),
    //                             //                 suffixIcon:
    //                             //                     Icon(Icons.arrow_forward_ios),
    //                             //                 hoverColor: Colors.amberAccent,
    //                             //                 // border:
    //                             //                 hintStyle: TextStyle(
    //                             //                     color: Color.fromRGBO(
    //                             //                         0, 47, 52, 1.0),
    //                             //                     fontWeight: FontWeight.bold),
    //                             //                 hintText: 'location',
    //                             //                 // helperText: "choose"
    //                             //                 labelText: "f"
    //                             //               ),
    //                             //             ),
    //                             //           ),
    //                             //         ),
    //                             //       ),
    //                             //     )),
    //                           ],
    //                         )),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //             bottomNavigationBar: BottomAppBar( child: Row(
    //       children: [
    //         SizedBox(width: 17,),
    //         SizedBox(
    //                           height: 40,
    //                           width: MediaQuery.of(context).size.width * 0.93,
    //                           child: ElevatedButton(
    //                               onPressed: () {
    //                                 // loc.text = "";
    //                               },
    //                               style: ButtonStyle(
    //                                   backgroundColor: MaterialStateProperty.all(
    //                                       const Color.fromRGBO(5, 51, 56, 1))),
    //                               child: const Text("Next"))),
    //                               SizedBox(height: 70,)
    //       ],
    //     ))
    //   ),
    // );
    if (widget.category == "charging cables" || widget.category == "converters" || widget.category == "chargers" || widget.category == "screens" || widget.category == "screen protectors" || widget.category == "mobile stands" || widget.category == "ring lights" || widget.category == "selfie sticks" || widget.category == "power banks" || widget.category == "headphones" || widget.category == "earphones" || widget.category == "covers & cases" || widget.category == "external memory" || widget.category == "other accessories") {
      return AccessoriesDetails(category: widget.category,);
    }
    else
    return Mobiles();
  }
}
