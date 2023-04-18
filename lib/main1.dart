import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  const contacts({super.key, required this.name});
  final String name;

  @override
  State<contacts> createState() => _MyContactState();
}

class _MyContactState extends State<contacts> {
  var names = [
    'Areasus',
    'Santosh',
    'khui',
    'Helmet',
    'Bike',
    'scooter',
    'Areasus',
    'Santosh',
    'khui',
    'Helmet',
    'Bike',
    'scooter',
    'Areasus',
    'Santosh',
    'khui',
    'Helmet',
    'Bike',
    'scooter',
    'Areasus',
    'Santosh',
    'khui',
    'Helmet',
    'Bike',
    'scooter1'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text(
          //   'Areasus',
          //   style: TextStyle(fontSize: 35),
          // ),
          // title:
          //     SizedBox(width: 200, child: Image.asset('assets/images/logo.png')),
          title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
                width: 60,
                height: 60,
                child: Image.asset('assets/images/vnrp.png')),
            Text(
              "Welcome ${widget.name}",
              style: TextStyle(fontSize: 20),
            )
          ]),
        ),
        // body: Center(
        //   child: Container(
        //     width: 1000,
        //     height: 500,
        //     color: Colors.blueAccent,
        //   ),
        // body: Center(
        //   child: Container(
        //     width: 200,
        //     height: 500,
        //     color: Colors.amber,
        //     child: const Center(
        //       child: Text(
        //         'Text is helmet',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //   ),
        // ),
        // body: const Text(
        //   "Helmets",
        //   style: TextStyle(color: Colors.red),
        // ),
        // body: TextButton(
        //   child: Text('click helmet'),
        //   onPressed: () {
        //     print("helmet thichyoo");
        //   },
        //   onLongPress: () {
        //     print("helmet thichyoo long");
        //   },
        // ),
        // body: ElevatedButton(
        //   child: Text('helmet print'),
        //   onPressed: () {
        //     print("eleveted helmet");
        //   },
        //   onLongPress: () {
        //     print("helmet elevated long");
        //   },
        // ),
        // body: OutlinedButton(
        //   child: Text('click to LOGIN'),
        //   onPressed: () {
        //     print("login predded");
        //   },
        //   onLongPress: () {
        //     print("login long long");
        //   },
        // ),
        // body: SizedBox(
        //     width: 100,
        //     height: 100,
        //     child:
        // Center(child: Image.asset('assets/images/vnrp.png'))),
        // body: Container(
        //   // width: 200,
        //   // height: 500,
        //   child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: <Widget>[
        //         Container(
        //             width: 100, child: Image.asset('assets/images/logo.png')),
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             const Text(
        //               'Santosh',
        //               style: TextStyle(fontSize: 40),
        //             ),
        //             const Text('Gc', style: TextStyle(fontSize: 40)),
        //           ],
        //         ),
        //       ]),
        // ),
        // body: Center(
        //   child: InkWell(
        //     onTap: () {
        //       print("Tapped");
        //     },
        //     onLongPress: () {
        //       print("long press");
        //     },
        //     onDoubleTap: () {
        //       print("tap tap press");
        //     },
        //     child: Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.black,
        //       // child: ,
        //     ),
        //   ),
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SingleChildScrollView(
        //     child: Column(children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 height: 100,
        //                 width: 100,
        //                 color: Colors.blueAccent,
        //                 // child: ,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 height: 100,
        //                 width: 100,
        //                 color: Colors.black,
        //                 // child: ,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 height: 100,
        //                 width: 100,
        //                 color: Colors.pink,
        //                 // child: ,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 height: 100,
        //                 width: 100,
        //                 color: Colors.orange,
        //                 // child: ,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(bottom: 10),
        //         height: 200,
        //         color: Colors.amber,
        //         // child: ,
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(bottom: 10),
        //         height: 200,
        //         color: Colors.pinkAccent,
        //         // child: ,
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(bottom: 10),
        //         height: 200,
        //         color: Colors.redAccent,
        //         // child: ,
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(bottom: 10),
        //         height: 200,
        //         color: Colors.yellow,
        //         // child: ,
        //       ),
        //     ]),
        //   ),
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     reverse: false,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "ABC1",
        //           style: TextStyle(fontSize: 25),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "ABC2",
        //           style: TextStyle(fontSize: 25),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           "ABC3",
        //           style: TextStyle(fontSize: 25),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView.builder(
        //     itemBuilder: (context, index) {
        //       return Text(
        //         names[index],
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       );
        //     },
        //     itemCount: names.length,
        //     itemExtent: 200,
        //     scrollDirection: Axis.vertical,
        //   ),
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView.separated(
        //     itemBuilder: (context, index) {
        //       return Container(
        //         color: Colors.teal[400],
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 height: 80,
        //                 width: 80,
        //                 child: Image.network(
        //                     'https://icon-library.com/images/avatar-png-icon/avatar-png-icon-13.jpg'),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.end,
        //                 children: [
        //                   Text(
        //                     "Name:" + names[index],
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.black,
        //                     ),
        //                     textAlign: TextAlign.left,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Text(
        //                         "Age:25",
        //                         style: TextStyle(
        //                             fontSize: 15,
        //                             fontWeight: FontWeight.w500,
        //                             color: Colors.indigo),
        //                       ),
        //                       Text(
        //                         " Gender:Male",
        //                         style: TextStyle(
        //                             fontSize: 15,
        //                             fontWeight: FontWeight.w500,
        //                             color: Colors.indigo),
        //                       ),
        //                     ],
        //                   ),
        //                   Text(
        //                     "Phone:8998989898",
        //                     style: TextStyle(
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.white),
        //                   ),
        //                   Text(
        //                     "Email:xyz@mail.com",
        //                     style: TextStyle(
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.purple),
        //                   ),
        //                   Text(
        //                     "Email:xyz@mail.com",
        //                     style: TextStyle(
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.white),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       );
        //     },
        //     itemCount: names.length,
        //     separatorBuilder: (context, index) => const Divider(
        //       height: 5,
        //       thickness: 2,
        //     ),
        //     scrollDirection: Axis.vertical,
        //   ),
        // ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              iconColor: Colors.blue,
              title: Text(
                names[index],
                style: TextStyle(fontFamily: 'Puff'),
              ),
              subtitle: Text(
                'Number',
                style: TextStyle(fontFamily: 'Puff'),
              ),
              trailing: Icon(Icons.add),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 1,
            );
          },
          itemCount: names.length,
        ));
  }
}
