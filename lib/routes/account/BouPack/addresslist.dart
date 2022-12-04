import 'package:flutter/material.dart';
import 'package:olx_clone/routes/account/BouPack/addressinfo.dart';

class AdressList extends StatefulWidget {
  const AdressList({super.key});

  @override
  State<AdressList> createState() => _AdressListState();
}

class _AdressListState extends State<AdressList> {
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
          "Addresses List",
          style: TextStyle(
              color: Color.fromRGBO(12, 56, 61, 1.0),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddressInfo()));
            },
            icon: Icon(
              Icons.add,
              color: Color.fromRGBO(12, 56, 61, 1.0),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(width: 150,image: AssetImage("assets/images/nothaveloc.png")),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("You have no address yet", style: TextStyle(color: Color.fromRGBO(12, 56, 61, 1.0), fontWeight: FontWeight.bold),),
          )
        ],
      ),
    ));
  }
}
