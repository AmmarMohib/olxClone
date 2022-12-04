import 'package:flutter/material.dart';
import 'package:olx_clone/commons/account_rows.dart';
import 'package:olx_clone/routes/account/settings/Privacy.dart';
import 'package:olx_clone/routes/account/settings/notifications.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
              "Settings",
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
                    MaterialPageRoute(builder: (context) => Privacy()));
              },
              heading: "Privacy",
              sub_heading:
                  "Phone number visibility"),
          AccountRows(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },

              heading: "Notifications",
              sub_heading: "Recommendations and special communication"),
          AccountRows(
              ontap: () {
                // Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => BillingInfo()));
              },
              heading: "Logout",
              sub_heading: ""),
        ]),
      ),
    );
  }
}