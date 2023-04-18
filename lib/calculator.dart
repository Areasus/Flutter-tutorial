import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _MycalculatorState();
}

class _MycalculatorState extends State<calculator> {
  var count = 1;
  var result = "";
  var var1 = TextEditingController();
  var var2 = TextEditingController();
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Text(
      //         "Pressed:$count",
      //         style: TextStyle(fontSize: 50),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           setState(() {
      //             count++;
      //           });
      //         },
      //         onLongPress: () {
      //           setState(() {
      //             count += 5;
      //             print("long p");
      //           });
      //         },
      //         child: Text("Press me"),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        color: Colors.blue[300],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: var1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "variable 1",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  controller: var2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "variable 2",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var n1 = int.parse(var1.text.toString());
                          var n2 = int.parse(var2.text.toString());
                          if (n1 != null && n2 != null) {
                            setState(() {
                              var add = n1 + n2;
                              result = "$add";
                            });
                          }
                        },
                        child: Text(
                          "add",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var n1 = int.parse(var1.text.toString());
                          var n2 = int.parse(var2.text.toString());
                          if (n1 != null && n2 != null) {
                            setState(() {
                              var sub = n1 - n2;
                              result = "$sub";
                            });
                          }
                        },
                        child: Text(
                          "sub",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var n1 = int.parse(var1.text.toString());
                          var n2 = int.parse(var2.text.toString());
                          if (n1 != null && n2 != null) {
                            setState(() {
                              var mul = n1 * n2;
                              result = "$mul";
                            });
                          }
                        },
                        child: Text(
                          "mul",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var n1 = int.parse(var1.text.toString());
                          var n2 = int.parse(var2.text.toString());
                          if (n1 != null && n2 != null) {
                            setState(() {
                              var mul = n1 / n2;
                              result = "$mul";
                            });
                          }
                        },
                        child: Text(
                          "div",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Result=$result",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                RangeSlider(
                  values: values,
                  labels: labels,
                  divisions: 50,
                  min: 0,
                  max: 100,
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,
                  onChanged: (newValue) {
                    setState(() {
                      print("${newValue.start},${newValue.end}");
                      values = newValue;
                    });
                  },
                ),
                Text(
                  "Start Value:${values.start}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "End Value:${values.end}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class buyPage extends StatefulWidget {
//   @override
//   State<buyPage> createState() => _buyPageState();
// }

// class _buyPageState extends State<buyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("HElmet"),
//       ),
//       body: Container(),
//     );
//   }
// }
