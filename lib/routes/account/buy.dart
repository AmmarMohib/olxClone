import 'package:flutter/material.dart';
import 'package:olx_clone/commons/account_rows.dart';
import 'package:olx_clone/routes/account/BouPack/buypack.dart';
import 'package:olx_clone/routes/account/BouPack/addresslist.dart';
import 'package:olx_clone/routes/account/BouPack/billinfo.dart';
import 'package:olx_clone/routes/account/BouPack/delivord.dart';
import 'package:olx_clone/routes/account/BouPack/myorders.dart';

class Buy extends StatefulWidget {
  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
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
              "Bought Packages & Billing",
              style: TextStyle(
                  color: Color.fromRGBO(12, 56, 61, 1.0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Color.fromRGBO(250, 250, 250, 1)),
        backgroundColor: Colors.white,
        body: Column(children: [
          AccountRows(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BuyPackages()));
              },
              heading: "Buy packages",
              sub_heading:
                  "Sell faster, more & at higher margins with packages"),
          AccountRows(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyOrders()));
              },

              heading: "My Orders",
              sub_heading: "Active, scheduled and expired orders"),
          AccountRows(
              ontap: () {
                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BillingInfo()));
              },
              heading: "Billing Information",
              sub_heading: "Edit your billing name, adress, etc"),
          AccountRows(
              ontap: () {
                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AdressList()));
              },
              heading: "Adress Information",
              sub_heading: "Edit your Adress Information"),
          AccountRows(
              ontap: () {
                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DeliveryOrders()));
              },
              heading: "Delivery Orders",
              sub_heading: "Track your selling or buying delivery orders")
        ]),
      ),
    );
  }
}
