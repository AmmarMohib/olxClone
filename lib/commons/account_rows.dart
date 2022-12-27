import 'dart:ui';

import 'package:flutter/material.dart';

class AccountRows extends StatefulWidget {
  final ontap;
  final String heading;
  final String sub_heading;
  final leading;
  const AccountRows(
      {super.key,
      required this.ontap,
      required this.heading,
      required this.sub_heading, this.leading});

  @override
  State<AccountRows> createState() => _AccountRowsState();
}

class _AccountRowsState extends State<AccountRows> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 25),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.93,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.heading,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 47, 52, 1.0)),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            widget.sub_heading,
                            style: const TextStyle(
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
          height: 7,
        ),
        const Divider(height: 3),
      ],
    );
  }
}
