import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_text.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

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
          "Services",
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
                  txt: "Tutions & Academies",
                  category: "tuitions & academies",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Travel & Visa",
                  category: "travel & visa",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Car Rental",
                  category: "car rental",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Domestic Help",
                  func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DomesticHelp()));
                  },
                  showico: true,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Drivers & Taxi",
                  category: "drivers & taxi",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Web Development",
                  category: "web development",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Mobile Development",
                  category: "mobile development",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Other Services",
                  category: "other services",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Electronics & Computer Repair",
                  category: "electronics & computer repair",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Event Services",
                  category: "event services",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "health & Beauty",
                  category: "health & beauty",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Movers & Packers",
                  category: "movers & packers",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Home & Office Repair",
                  category: "home & office repair",
                  func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeOfficeRepair()));
                  },
                  showico: true,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Catering & Restaurant",
                  category: "catering & restaurant",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Farm & Fresh Food",
                  category: "farm & fresh food",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}

class DomesticHelp extends StatelessWidget {
  const DomesticHelp({super.key});

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
          "Domestic Help",
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
                  txt: "Maids",
                  category: "maids",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Other Domestic Help",
                  category: "other domestic help",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Cooks",
                  category: "cooks",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Babysitters",
                  category: "babysitters",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Nursing Staff",
                  category: "nursing staff",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}

class HomeOfficeRepair extends StatelessWidget {
  const HomeOfficeRepair({super.key});

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
          "Home & Office Repair",
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
                  txt: "Other Repair services",
                  category: "other repair services",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Painters",
                  category: "painters",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Electricians",
                  category: "electricians",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "carpenters",
                  category: "carpenters",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Pest Control",
                  category: "pest control",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Plumbers",
                  category: "plumbers",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Water Tank Cleaning",
                  category: "water tank cleaning",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "AC Services",
                  category: "ac services",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Deep Cleaning",
                  category: "deep cleaning",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
                CataTxt(
                  txt: "Geyser Services",
                  category: "geyser services",
                  func: () {},
                  showico: false,
                  color: Color.fromRGBO(5, 51, 56, 1),
                ),
              ]))),
    ));
  }
}
