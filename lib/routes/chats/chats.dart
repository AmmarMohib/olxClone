import 'package:flutter/material.dart';
import 'package:olx_clone/commons/actionbutton.dart';
import 'package:olx_clone/commons/bottomnavbar.dart';
import 'package:olx_clone/routes/chats/all.dart';
import 'package:olx_clone/routes/chats/buying.dart';
import 'package:olx_clone/routes/chats/selling.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
                appBar: AppBar(
            // leading: IconButton(
            //   onPressed: (() => Navigator.pop(context)),
            //   icon: const Icon(Icons.close,
            //       color: Color.fromRGBO(5, 51, 56, 1)),
            // ),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
            elevation: 0,
            title: const Text(
              "Chats",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(5, 51, 56, 1)),
            ),
            bottom: TabBar(
                labelColor: Color.fromRGBO(12, 56, 61, 1.0),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: "ALL"),
                  Tab(
                    text: "BUYING",
                  ),
                  Tab(
                    text: "SELLING",
                  )
                ],
              ),
          ),
          backgroundColor: Colors.white,
          body: TabBarView(children: [All(), buying(), Selling()]),
          bottomNavigationBar: BottomNavigation(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionBtn(),
        ),
      ),
    );
  }
}