import 'dart:ui';

import 'package:flutter/material.dart';

class Ads extends StatefulWidget {
  const Ads({super.key});

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
      toolbarHeight: 30,
        elevation: 1,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        title: TextButton(onPressed: () {}, child: Text("View all (0)▼", style: TextStyle(color: Color.fromRGBO(33, 71, 76, 1.0)),)),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
       body: Container(
        width: MediaQuery.of(context).size.width,
         child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 500),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                 decoration: BoxDecoration(
                color: Color.fromRGBO(59, 119, 255, 1.0),
    border: Border.all(
                      color: Color.fromRGBO(59, 119, 255, 1.0),
    ),
    borderRadius: BorderRadius.all(Radius.circular(5))
  ),
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.1,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text("Heavy discount on packages", style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: OutlinedButton(

                              //  borderSide: BorderSide(color: Colors.blue),
                              
                          onPressed: () {},
                          // style: ButtonStyle(
                          //   // foregroundColor:  MaterialStateProperty.all<Color>(Colors.red),
                            
                          //   shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                          // ),
                          style: OutlinedButton.styleFrom(
    side: BorderSide(width: 1.0, color: Colors.white),
  ),
                          child: const Text("View Packages", style: TextStyle(color: Colors.white),),
                      ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ), 
          Align(alignment: Alignment.center, child: Text("You don't have any ads yet", style: TextStyle(color: Color.fromRGBO(33, 71, 76, 1.0), fontSize: 18, fontWeight: FontWeight.w800),))
          ],
         ),
       ),
      ),
    );
  }
}