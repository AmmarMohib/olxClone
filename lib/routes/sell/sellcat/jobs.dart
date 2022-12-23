import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

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
          "Jobs",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(5, 51, 56, 1)),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                CataTxt(
                  txt: "Online Jobs",
                  category: "online jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Marketing Jobs",
                  category: "marketing jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Advertising & PR Jobs",
                  category: "advertising & pr jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Education Jobs",
                  category: "education jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Customer Services Jobs",
                  category: "customer services jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Sales Jobs",
                  category: "sales jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "IT & Networking Jobs",
                  category: "it & networking jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Hotels & Tourism Jobs",
                  category: "hotels & tourism jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Clerical & Administration Jobs",
                  category: "clerical & administration jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Human Resources Jobs",
                  category: "human resources jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Accounting & Finance Jobs",
                  category: "accounting & finance jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Manufacturing",
                  category: "manufacturing",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Medical Jobs",
                  category: "medical jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Domestic Staff Jobs",
                  category: "domestic staff jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Part - Time Jobs",
                  category: "part - time jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Other Jobs",
                  category: "other jobs",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}