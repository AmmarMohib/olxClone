import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_clone/routes/home/location_selector.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  // ignore: non_constant_identifier_names
  String location_name = 'Pakistan';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              elevation: 0,
              backgroundColor: Colors.white,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Row(children: [
                      Image.asset(
                        "assets/images/olx_logo_blue.png",
                        // fit: BoxFit.fitWidth,
                        width: 33,
                      ),
                      const SizedBox(
                        width: 74,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            if (kDebugMode) {
                              print('object');
                            }
                          },
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(239, 237, 240, 1.0),
                                child: Icon(
                                  Icons.directions_car_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Text("olx motors".toUpperCase(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () {
                            if (kDebugMode) {
                              print('object');
                            }
                          },
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(239, 237, 240, 1.0),
                                child: Icon(
                                  CupertinoIcons.building_2_fill,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Text("olx property".toUpperCase(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)))
                            ],
                          ),
                        ),
                      ),
                    ])),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(150),
                child: Wrap(
                          children: [
                InkWell(
                  onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocationSelect()),
                      )),
                  child: SafeArea(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                          height: 50,
                        ),
                        const Icon(Icons.location_on_outlined, size: 25),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              location_name,
                              style: const TextStyle(
                                  color: Color.fromRGBO(5, 51, 56, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )),
                        // alignment: Alignment.bottomRight,
                        const Spacer(),
                        // alignment: Alignment.center ,
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 360,
                    height: 50,
                    child: ScrollablePositionedList.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return TextField(
                          // expands: true,
                          // minLines: 2,
                          // maxLines: 2,
                          textAlignVertical: TextAlignVertical.center,
                          // controller: loc,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hoverColor: Colors.amberAccent,
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: 'Search area, city or country',
                          ),
                        );
                      }
                    ),
                  ),
                ),
                          ],
                        ),
              ),
            ),
          ),
          body: null
          ),
    );
  }
}
