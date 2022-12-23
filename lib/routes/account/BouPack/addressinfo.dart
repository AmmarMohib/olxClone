import 'package:flutter/material.dart';

class AddressInfo extends StatefulWidget {
  const AddressInfo({super.key});

  @override
  State<AddressInfo> createState() => _AddressInfoState();
}

class _AddressInfoState extends State<AddressInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
   appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              size: 20, color: Color.fromRGBO(12, 56, 61, 1.0)),
        ),
        title: Text(
          "Address Information",
          style: TextStyle(
              color: Color.fromRGBO(12, 56, 61, 1.0),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      ),
      backgroundColor: Colors.white,     
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: Image(width: 150,image: AssetImage("assets/images/nothaveloc.png")),
      //     ),
      //     SizedBox(height: 10,),
      //     Center(
      //       child: Text("You have no address yet", style: TextStyle(color: Color.fromRGBO(12, 56, 61, 1.0), fontWeight: FontWeight.bold),),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address name *",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: TextField(
                        decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
                         ),
                            border: OutlineInputBorder(),
                            labelText: 'Enter address',
                            hintText: 'Enter the name of the address'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "State/Province *",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: TextField(
                        decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
                         ),
                            border: OutlineInputBorder(),
                            // labelText: 'Enter name',
                            // hintText: 'Enter your name'
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address line 1 *",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: TextField(
                        decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
                         ),
                            border: OutlineInputBorder(),
                            labelText: 'Enter street',
                            hintText: 'Enter your street'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address line 2",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: TextField(
                        
                        decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
                         ),
                            border: OutlineInputBorder(),
                            labelText: 'Enter building number',
                            hintText: 'Enter your building number'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Notes",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child:  TextField(
                      // controller: textarea,
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration( 
                         hintText: "notes",
                         border: OutlineInputBorder(),
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color.fromRGBO(116, 205, 202, 1.0))
                         )
                      ),
                       
                   ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
                bottomNavigationBar: BottomAppBar( child: Row(
          children: [
            SizedBox(width: 17,),
            SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.93,
                              child: ElevatedButton(
                                  onPressed: () {
                                    // loc.text = "";
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          const Color.fromRGBO(5, 51, 56, 1))),
                                  child: const Text("Save address"))),
                                  SizedBox(height: 70,)
          ],
        ))
      ),
    );
  }
}