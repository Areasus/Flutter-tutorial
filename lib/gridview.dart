import 'package:flutter/material.dart';
import 'package:wscube/UI/ui.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            displayMedium: TextStyle(
              fontSize: 20,
            ),
            displaySmall: TextStyle(fontSize: 15)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String welcome = "";
  var colors = [
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.purple,
    Colors.pink,
    Colors.white,
    Colors.red,
    Colors.blueGrey,
    Colors.grey,
    Colors.cyan,
  ];
  @override
  Widget build(BuildContext context) {
    var user = TextEditingController();
    var password = TextEditingController();
    var phone = TextEditingController();
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome Grid",
          style: h1(),
        ),
      ),
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   padding: EdgeInsets.all(10),
      //   children: [
      //     Container(
      //       color: Colors.black,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       color: Colors.brown,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.black,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //     ),
      //   ],
      // ),
      // body: GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   padding: EdgeInsets.all(10),
      //   children: [
      //     Container(
      //       color: Colors.black,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       color: Colors.brown,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.black,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.pink,
      //     ),
      //   ],
      // ),
      // body: GridView.builder(
      //     itemCount: colors.length,
      //     padding: EdgeInsets.all(8.0),
      //     // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     //   crossAxisCount: 2,
      //     //   crossAxisSpacing: 10,
      //     //   mainAxisSpacing: 10,
      //     // ),
      //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 200,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //     ),
      //     itemBuilder: (context, index) {
      //       return Container(color: colors[index]);
      //     }),
      body: Wrap(
        children: [
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
