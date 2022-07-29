import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CataTxt extends StatelessWidget {
  const CataTxt(
      {Key? key, required this.txt, required this.func, required this.showico, required this.color})
      : super(key: key);
  final String txt;
  final VoidCallback func;
  final bool showico;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            func();
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.1,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.01),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      txt,
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child:
                        showico != false ? Icon(CupertinoIcons.forward) : null,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
