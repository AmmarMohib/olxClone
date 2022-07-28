import 'package:flutter/material.dart';

class CategoriesCircleAvatar extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final Color bgcolor;
  final double marginleft;
  final double margintop;
  // final IconData iconurl;
  const CategoriesCircleAvatar(
      {Key? key,
      required this.icon,
      required this.onTap,
      required this.text,
      required this.bgcolor,
      required this.marginleft, required this.margintop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: marginleft),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTap,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: bgcolor,
              foregroundColor: Colors.black,
              child: Icon(
                icon,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: margintop),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                  text,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Color.fromRGBO(5, 51, 56, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
