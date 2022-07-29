import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final VoidCallback onTap;
  // final IconData iconurl;
  const SignUpButton(
      {Key? key,
      required this.imageUrl,
      required this.onTap,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Color.fromRGBO(5, 51, 56, 1)))),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(color: Color.fromRGBO(5, 51, 56, 1), fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
        // by onpressed we call the function signup function
        onPressed: () {
          onTap();
        },
      ),
    );
  }
}
