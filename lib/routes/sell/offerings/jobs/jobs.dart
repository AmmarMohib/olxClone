import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_radio.dart';

class JobsDetails extends StatefulWidget {
  final String category;
  const JobsDetails({super.key, required this.category});

  @override
  State<JobsDetails> createState() => _JobsDetailsState();
}

class _JobsDetailsState extends State<JobsDetails> {
  int _typeadvalue = 0;
  int _typevalue = 0;
  int _hiringvalue = 0;
  int _careervalue = 0;
  int _salaryvalue = 0;
  int _positionvalue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (() => Navigator.pop(context)),
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
                    child: Container(
                      color: const Color.fromRGBO(250, 250, 250, 1.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "UPLOAD UP TO 20 PHOTOS",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 51, 56, 1)),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                               Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Hiring Person/Company *",
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
                                              groupValue: _hiringvalue,
                                              leading: 'HIRING AS COMPANY',
                                              onChanged: (value) => setState(
                                                  () => _hiringvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _hiringvalue,
                                              leading: 'HIRING AS INDVIDUAL',
                                              onChanged: (value) => setState(
                                                  () => _hiringvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: MyRadioListTile<int>(
                                                value: 3,
                                                groupValue: _hiringvalue,
                                                leading:
                                                    'HIRING AS THIRD PARTY',
                                                onChanged: (value) => setState(
                                                    () =>
                                                        _hiringvalue = value!),
                                              ),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Company Name *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.94,
                                        child: const TextField(
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
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Type of Ad *",
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
                                              groupValue: _typeadvalue,
                                              leading: 'JOB WANTED',
                                              onChanged: (value) => setState(
                                                  () => _typeadvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _typeadvalue,
                                              leading: 'JOB OFFER',
                                              onChanged: (value) => setState(
                                                  () => _typeadvalue = value!),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Salary from *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.94,
                                        child: const TextField(
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
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Salary to *",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(12, 56, 61, 1.0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.94,
                                        child: const TextField(
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
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Career Level *",
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
                                              groupValue: _careervalue,
                                              leading: 'ENTRY LEVEL',
                                              onChanged: (value) => setState(
                                                  () => _careervalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _careervalue,
                                              leading: 'ASSOCIATE',
                                              onChanged: (value) => setState(
                                                  () => _careervalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _careervalue,
                                              leading: 'MID-SENIOR LEVEL',
                                              onChanged: (value) => setState(
                                                  () => _careervalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _careervalue,
                                              leading: 'DIRECTOR',
                                              onChanged: (value) => setState(
                                                  () => _careervalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _careervalue,
                                                leading: 'EXECUTIVE',
                                                onChanged: (value) => setState(
                                                    () =>
                                                        _careervalue = value!),
                                              ),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Salary Period *",
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
                                              groupValue: _salaryvalue,
                                              leading: 'MONTHLY',
                                              onChanged: (value) => setState(
                                                  () => _salaryvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _salaryvalue,
                                              leading: 'HOURLY',
                                              onChanged: (value) => setState(
                                                  () => _salaryvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _salaryvalue,
                                              leading: 'WEEKLY',
                                              onChanged: (value) => setState(
                                                  () => _salaryvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _salaryvalue,
                                              leading: 'YEARLY',
                                              onChanged: (value) => setState(
                                                  () => _salaryvalue = value!),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                )
                              ,Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Position Type *",
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
                                              groupValue: _positionvalue,
                                              leading: 'FULL-TIME',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _positionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _positionvalue,
                                              leading: 'PART-TIME',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _positionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _positionvalue,
                                              leading: 'CONTRACT',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _positionvalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _positionvalue,
                                              leading: 'TEMPORARY',
                                              onChanged: (value) => setState(
                                                  () =>
                                                      _positionvalue = value!),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                                      widget.category == "marketing jobs"
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "Type *",
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
                                              groupValue: _typevalue,
                                              leading: 'SEO',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 2,
                                              groupValue: _typevalue,
                                              leading: 'SEM',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 3,
                                              groupValue: _typevalue,
                                              leading: 'SOCIAL MEDIA MARKETING',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            MyRadioListTile<int>(
                                              value: 4,
                                              groupValue: _typevalue,
                                              leading: 'EMAIL MARKETING',
                                              onChanged: (value) => setState(
                                                  () => _typevalue = value!),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: MyRadioListTile<int>(
                                                value: 5,
                                                groupValue: _typevalue,
                                                leading: 'OTHERS',
                                                onChanged: (value) => setState(
                                                    () =>
                                                        _typevalue = value!),
                                              ),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                )
                              : Container(),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                  child: const TextField(
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
                                  child: const TextField(
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
          bottomNavigationBar: BottomAppBar(
              child: Row(
            children: [
              const SizedBox(
                width: 17,
              ),
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
                      child: const Text("Next"))),
              const SizedBox(
                height: 70,
              )
            ],
          ))),
    );
  }
}
