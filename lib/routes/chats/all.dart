import 'package:flutter/material.dart';


class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          Image(image: AssetImage("assets/images/message_icon.png"), width: 150,),
          SizedBox(height: 15,),
          Text("No messages yet?", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(5, 51, 56, 1)),),
                  SizedBox(height: 15,),
                  Text("Find something you like and start a conversation!",
                  style: TextStyle(
                  fontSize: 13,
                  // fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(5, 51, 56, 1)),),
                  SizedBox(height: 15,),
                  SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.93,
                              child: ElevatedButton(
                                  onPressed: () {
                                    // loc.text = "";
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          const Color.fromRGBO(5, 51, 56, 1))),
                                  child: const Text("Explore the latest ads"))),
        ],
      ),
    );
  }
}