import 'package:flutter/material.dart';
import 'package:olx_clone/routes/account/myOrders/active.dart';
import 'package:olx_clone/routes/account/myOrders/expired.dart';
import 'package:olx_clone/routes/account/myOrders/scheduled.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 20, color: Color.fromRGBO(12, 56, 61, 1.0)),
            ),
            title: Text(
              "My Orders",
              style: TextStyle(
                  color: Color.fromRGBO(12, 56, 61, 1.0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Color.fromRGBO(250, 250, 250, 1),
            bottom: TabBar(
              labelColor: Color.fromRGBO(12, 56, 61, 1.0),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: "ACTIVE"),
                Tab(
                  text: "SCHEDULED",
                ),
                Tab(
                  text: "EXPIRED",
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(235, 238, 239, 1.0),
          body: TabBarView(children: [Active(), Scheduled(), Expired()]),
        ),
      ),
    );
  }
}
