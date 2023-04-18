import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class primaryButton extends StatelessWidget {
  final String name;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? tstyle;
  final VoidCallback? callback;
  primaryButton(
      {required this.name,
      this.icon,
      this.bgColor = Colors.blue,
      this.tstyle,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  Text(
                    name,
                    style: tstyle,
                  )
                ],
              ),
            )
          : Container(
              child: Text(
                name,
                style: tstyle,
              ),
            ),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(6),
              topRight: Radius.circular(20),
              topLeft: Radius.circular(6)),
        ),
      ),
    );
  }
}
