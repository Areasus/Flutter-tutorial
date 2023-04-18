import 'package:flutter/material.dart';

class sidePage extends StatefulWidget {
  @override
  State<sidePage> createState() => _sidePageState();
}

class _sidePageState extends State<sidePage> {
  var _w = 100.0;
  bool _toggle = false;
  var _h = 100.0;
  var bgCOlor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to box decoration",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.blue[600],
            //   child: Center(
            //     child: Container(
            //       width: 200,
            //       height: 200,
            //       decoration: BoxDecoration(
            //         color: Colors.blueGrey,
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(75),
            //           bottomRight: Radius.circular(75),
            //         ),
            //         border: Border.all(
            //           width: 5,
            //           color: Colors.white,
            //         ),
            //         boxShadow: [
            //           BoxShadow(
            //             blurRadius: 10,
            //             color: Colors.black,
            //             spreadRadius: 2,
            //           )
            //         ],
            //         // borderRadius: BorderRadius.circular(25),
            //       ),
            //     ),
            //   ),
            // ),
            AnimatedContainer(
              width: _w,
              height: _h,
              color: bgCOlor,
              curve: Curves.bounceInOut,
              duration: Duration(
                seconds: 1,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_toggle) {
                  _w = 100.0;
                  _h = 100.0;
                  _toggle = false;
                  bgCOlor = Colors.blue;
                } else {
                  _w = 100.0;
                  _h = 200.0;
                  _toggle = true;
                  bgCOlor = Colors.cyan;
                }

                setState(() {});
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
