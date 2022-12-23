import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/routes/My%20Ads/myads.dart';
import 'package:olx_clone/routes/account/account.dart';
import 'package:olx_clone/routes/chats/chats.dart';
import 'package:olx_clone/routes/home/filters.dart';
import 'package:olx_clone/routes/home/homepage.dart';
import 'package:olx_clone/routes/home/location_selector.dart';
import 'package:olx_clone/routes/login/loginPage.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String location_name = 'Pakistan';

  @override
  Widget build(BuildContext context) {
    double resWidth = MediaQuery.of(context).size.width * 0.85;
    return BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
              height: 75,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        iconSize: 30.0,
                        padding: EdgeInsets.only(left: 28.0),
                        icon: Icon(
                          Icons.home,
                          color: Color.fromRGBO(0, 47, 52, 1.0),
                        ),
                        onPressed: () {
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
                          // setState(() {
                          //   _myPage.jumpToPage(0);
                          // });
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 27.0),
                          child: Text(
                            "Home".toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(0, 47, 52, 1.0),
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 30.0,
                        padding: EdgeInsets.only(left: 0.0),
                        icon: Icon(
                          Icons.chat_sharp,
                          color: Color.fromRGBO(0, 47, 52, 1.0),
                        ),
                        onPressed: () {
                                                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => Chats()));
                          // setState(() {
                          //   _myPage.jumpToPage(0);
                          // });
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 0),
                          child: Text(
                            "Chats".toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(0, 47, 52, 1.0),
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Text("sell",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 47, 52, 1.0),
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 30.0,
                        padding: EdgeInsets.only(left: 0.0),
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Color.fromRGBO(0, 47, 52, 1.0),
                        ),
                        onPressed: () {
                          // setState(() {
                          //   _myPage.jumpToPage(0);
                          // });
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAds()));
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Text(
                            "My Ads".toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(0, 47, 52, 1.0),
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 30.0,
                        padding: EdgeInsets.only(left: 0.0, right: 20),
                        icon: Icon(
                          Icons.account_circle,
                          color: Color.fromRGBO(0, 47, 52, 1.0),
                        ),
                        onPressed: () {
                          
                          // setState(() {
                          //   _myPage.jumpToPage(0);
                          // });
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => AccountPage()));
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 20),
                          child: Text(
                            "Account".toUpperCase(),
                            style: TextStyle(
                                color: Color.fromRGBO(0, 47, 52, 1.0),
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
