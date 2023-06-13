import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/actionbutton.dart';
import 'package:olx_clone/commons/bottomnavbar.dart';
import 'package:olx_clone/routes/account/buy.dart';
import 'package:olx_clone/routes/account/settings.dart';
import 'package:olx_clone/routes/login/loginPage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  var currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.white,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  currentUser == null
                      ? const CircleAvatar(
                          backgroundColor: Color.fromRGBO(240, 240, 230, 1.0),
                          radius: 50,
                          child: Icon(Icons.account_circle_outlined,
                              color: Color.fromRGBO(0, 47, 52, 1.0), size: 70),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.network(
                                FirebaseAuth.instance.currentUser!.photoURL
                                    .toString(),
                                // height: 350.0,
                                // width: 300.0,
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      currentUser == null
                          ? const Text(
                              "Log in",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 47, 52, 1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )
                          : Text(
                              FirebaseAuth.instance.currentUser!.displayName
                                  .toString(),
                              style: const TextStyle(
                                  color: Color.fromRGBO(0, 47, 52, 1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                      const SizedBox(
                        height: 3,
                      ),
                      currentUser == null
                          ? InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LoginPage()));
                              },
                              child: const Text("Log in to your account",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 47, 52, 1.0))),
                            )
                          : InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LoginPage()));
                              },
                              child: const Text("View and edit profile",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 47, 52, 1.0))),
                            ),
                      // SizedBox(height: ,),
                    ],
                  )
                ],
              ),
            ),
            currentUser != null
                ? Column(
                    children: [
                      InkWell(
                        onTap: (() {
                          print("ad");
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Buy()));
                        }),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 20, top: 40),
                            //   child: Image(
                            //     image: AssetImage("assets/images/buyIcon.png"),
                            //     width: 40,
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 40),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.83,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Buy Packages & My Orders",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  0, 47, 52, 1.0)),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          "Packages, orders, billing and invoices",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  104, 132, 135, 1.0)),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward_ios_sharp)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(height: 3),
                      InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Settings()));
                        }),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 30),
                              child: Icon(Icons.settings),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 30),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Settings",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  0, 47, 52, 1.0)),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Text(
                                          "Privacy and logout",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  104, 132, 135, 1.0)),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward_ios_sharp)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(height: 5),
                    ],
                  )
                : Container(),
            // SizedBox(height: 10,),

            InkWell(
              onTap: (() {}),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: Image(
                      image: AssetImage("assets/images/olx_logo.png"),
                      width: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Help & Support",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 47, 52, 1.0)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Help center and legal terms",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(104, 132, 135, 1.0)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_sharp)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(height: 3),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: currentUser == null
                      ? ElevatedButton(
                          onPressed: () {
                            // loc.text = "";
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(5, 51, 56, 1))),
                          child: const Text("Login or Register"))
                      : null),
            )
          ],
        ),
        bottomNavigationBar: const BottomNavigation(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingActionBtn(),
      )),
    );
  }
}
