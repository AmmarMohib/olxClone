import 'package:flutter/material.dart';
import 'package:olx_clone/routes/sell/sell.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class FloatingActionBtn extends StatefulWidget {
  const FloatingActionBtn({super.key});

  @override
  State<FloatingActionBtn> createState() => _FloatingActionBtnState();
}

class _FloatingActionBtnState extends State<FloatingActionBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Sell()));
      },
      child: OutlineGradientButton(
        backgroundColor: Colors.white,
        gradient: const LinearGradient(
          stops: [0, 0.5, 0.5, 1],
          colors: [
            Color.fromRGBO(34, 229, 219, 1.0),
            Color.fromRGBO(57, 118, 255, 1.0),
            Color.fromRGBO(255, 206, 50, 1.0),
            Color.fromRGBO(255, 206, 50, 1.0)
          ],
        ),
        strokeWidth: 4,
        padding: EdgeInsets.zero,
        radius: const Radius.circular(26),
        child: SizedBox(
          width: 52,
          height: 52,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.add,
                size: 30.0,
                color: Color.fromRGBO(5, 51, 56, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
