import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesCircleAvatar extends StatefulWidget {
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
      required this.marginleft,
      required this.margintop})
      : super(key: key);

  @override
  State<CategoriesCircleAvatar> createState() => _CategoriesCircleAvatarState();
}

class _CategoriesCircleAvatarState extends State<CategoriesCircleAvatar> {
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        opacity = 0.2;
        print('tappedDown');
        setState(() {});
      },
      onTapUp: (TapUpDetails details) {
        opacity = 1.0;
        print('tappedDown');
        setState(() {});
      },
      onTapCancel: () {
        opacity = 1.0;
        print('tapcancel');
        setState(() {});
      },
      onTap: widget.onTap,
      child: AnimatedOpacity(
        duration: Duration(microseconds: 0),
                        opacity: opacity,
        child: Padding(
          padding: EdgeInsets.only(left: widget.marginleft),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: widget.bgcolor,
                foregroundColor: Colors.black,
                child: Icon(
                  widget.icon,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: widget.margintop),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.center,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: const Color.fromRGBO(5, 51, 56, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AllCategoriesCircleAvatar extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final Color bgcolor;
  final double marginleft;
  final double margintop;
  // final IconData iconurl;
  const AllCategoriesCircleAvatar(
      {Key? key,
      required this.icon,
      required this.onTap,
      required this.text,
      required this.bgcolor,
      required this.marginleft,
      required this.margintop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: marginleft),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: margintop,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: bgcolor,
                foregroundColor: Colors.black,
                child: Icon(
                  icon,
                  size: 27,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.125,
                    top: MediaQuery.of(context).size.height * 0.0125),
                child: Text(
                  text,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: const Color.fromRGBO(5, 51, 56, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {
                    onTap;
                  },
                  icon: const Icon(CupertinoIcons.forward),
                  iconSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
