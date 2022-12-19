import 'package:flutter/material.dart';
import 'package:olx_clone/commons/actionbutton.dart';

class BillingInfo extends StatefulWidget {
  const BillingInfo({super.key});

  @override
  State<BillingInfo> createState() => _BillingInfoState();
}

class _BillingInfoState extends State<BillingInfo> {
  String dropdownvalue = 'Item 1';
  var _currencies = ["Bussiness", "Residential"];
  var _currentSelectedValue;
  var _category;
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
              "Billing Information",
              style: TextStyle(
                  color: Color.fromRGBO(12, 56, 61, 1.0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Color.fromRGBO(250, 250, 250, 1)),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Consumer Type *",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 12),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                // labelStyle: textStyle,
                                // labelStyle: TextStyle(color: Colors.black),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                hintStyle: TextStyle(color: Colors.black),
                                // hintText: 'Please select expense',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            isEmpty: _currentSelectedValue == "",
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _currentSelectedValue,
                                isDense: true,
                                // onChanged: (String newValue) {
                                //   setState(() {
                                //     _currentSelectedValue = newValue;
                                //     state.didChange(newValue);
                                //   });
                                // },
                                onChanged: (value) {
                                  setState(() {
                                    _currentSelectedValue = value;
                                    state.didChange(value);
                                  });
                                },
                                items: _currencies.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
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
                      "Email",
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
                            border: OutlineInputBorder(),
                            labelText: 'Enter email',
                            hintText: 'Enter your email'),
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
                      "Consumer name *",
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
                            border: OutlineInputBorder(),
                            labelText: 'Enter name',
                            hintText: 'Enter your name'),
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
                      "Bussiness Name *",
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
                            border: OutlineInputBorder(),
                            // labelText: 'Ent',
                            hintText: 'Enter your bussiness name'),
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
                      "Tax ID *",
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
                            border: OutlineInputBorder(),
                            labelText: 'Enter tax id',
                            hintText: 'Enter yor Tax ID'),
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
                      "Phone Number",
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
                            border: OutlineInputBorder(),
                            labelText: 'Enter phone number',
                            hintText: 'Enter your phone number'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 40),
                child: Text(
                        "Customer Address",
                        style: TextStyle(
                            color: Color.fromRGBO(12, 56, 61, 1.0), fontSize: 18, fontWeight: FontWeight.w800),
                      ),
              ),
Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address Line*",
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
                            border: OutlineInputBorder(),
                            labelText: 'Enter address',
                            hintText: 'Enter your address'),
                      ),
                    ),
                  ],
                ),
              ),              
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
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
                            border: OutlineInputBorder(),
                            labelText: 'Enter city',
                            hintText: 'Enter your city'),
                      ),
                    ),
                    SizedBox(height: 50,)
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
                                  child: const Text("Cancel"))),
                                  SizedBox(height: 70,)
          ],
        ))));
  }
}
