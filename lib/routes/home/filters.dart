import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Quickfilters extends StatefulWidget {
  const Quickfilters({Key? key}) : super(key: key);

  @override
  State<Quickfilters> createState() => _Quickfilterstate();
}

class _Quickfilterstate extends State<Quickfilters> {
  var loc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double resWidth = MediaQuery.of(context).size.width * 0.755;
  // }
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      resWidth = MediaQuery.of(context).size.width * 0.755;
    }
    else if (MediaQuery.of(context).orientation == Orientation.landscape) {
      resWidth = MediaQuery.of(context).size.width * 0.855;

    }
    // loc.text = "Pakistan";

    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 30,
            ),
            title: const Text(
              "Quick Filter",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(39),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: resWidth,
                          height: 40,
                          child: TextField(
                            // expands: true,
                            // minLines: 2,
                            // maxLines: 2,
                            textAlignVertical: TextAlignVertical.center,
                            controller: loc,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              prefixIcon: Icon(Icons.search),
                              hoverColor: Colors.amberAccent
                              ,
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Find cars, mobiles, phones and more',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                loc.text = "";
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(5, 51, 56, 1))),
                              child: const Text("Cancel")))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
      body: null,
    ));
  }
}
