import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:olx_clone/routes/home/homepage.dart';

// creating firebase instance
final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signIn(BuildContext context) async {
  var currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  } else {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      User? user = result.user;

      if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      } // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
    }
  }
}
