import 'package:flutter/material.dart';
import 'package:wscube/UI/ui.dart';
import 'package:wscube/calculator.dart';
import 'package:wscube/datetime.dart';
import 'package:wscube/gridview.dart';
import 'package:wscube/main1.dart';
import 'package:wscube/main11.dart';
import 'package:wscube/mapList.dart';
import 'package:wscube/signup.dart';
import 'package:wscube/splashScreen.dart';
import 'widgets/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

bool _isHidden = true;
var user = TextEditingController();
var pass = TextEditingController();
var ph = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VNRP',
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
      // home: const MyHomePage(
      //   title: "Hello world",
      // ),
      home: splashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  // callback(String name) {
  //   print(name);
  // }

  callback() {
    print("callback fun called");
  }

  String welcome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // title: Text(
        //   "Welcome $welcome",
        //   style: h1(),
        // ),
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              // fontFamily: "Puff",
            ),
            children: <TextSpan>[
              TextSpan(text: "Virtual Nepal "),
              // TextSpan(
              //   text: "${welcome}",
              //   style: TextStyle(
              //     color: Colors.redAccent[400],
              //     fontFamily: "Puff",
              //   ),
              // )
            ],
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              logo(),
              username(),
              Container(
                height: 10,
              ),
              password(),
              // phone(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String fetchedUser = user.text.toString();
                      String fetchedPass = pass.text;
                      print(fetchedPass);
                      print(fetchedUser);
                      welcome = fetchedUser.toUpperCase();
                      // setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => contacts(
                            name: welcome,
                          ),
                        ),
                      );
                    },
                    child: Text("LOGIN"),
                  ),
                  Container(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signUp(),
                        ),
                      );
                    },
                    child: Container(
                      child: Text("Sign Up"),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                // style: ButtonStyle(
                //   backgroundColor:MaterialStateColor
                // ),
                onPressed: callback,
                child: Container(
                  child: Text("Forget password"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => dtPicker(),
                        ),
                      );
                    },
                    child: Text("Datetime"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => sidePage(),
                        ),
                      );
                    },
                    child: Text("animation"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => calculator(),
                        ),
                      );
                    },
                    child: Text("calculator"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mapList(),
                        ),
                      );
                    },
                    child: Text("mapList"),
                  ),
                ],
              )
              // primaryButton(
              //   name: "Forget Username",
              //   icon: Icon(Icons.lock),
              //   callback: callback,
              //   bgColor: Colors.red[400],
              //   tstyle: TextStyle(fontFamily: "Puff"),
              // ),
              // FaIcon(
              //   FontAwesomeIcons.lock,
              //   color: Colors.red,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250, height: 250, child: Image.asset('assets/images/vnrp.png'));
  }
}

class username extends StatefulWidget {
  @override
  State<username> createState() => _usernameState();
}

class _usernameState extends State<username> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: user,
      decoration: InputDecoration(
        hintText: "Username",
        label: Text("Username"),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.green, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.lightGreen,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        // suffixText: "Username",
        // suffixIcon: IconButton(
        //   icon: Icon(
        //     Icons.remove_red_eye,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {},
        // ),
        // prefixText: "Username:",
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(
        //     color: Colors.deepOrange,
        //   ),
        // ),
      ),
    );
  }
}

class password extends StatefulWidget {
  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: pass,
      obscureText: _isHidden,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          label: Text("Password"),
          hintText: "password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.password,
                color: Colors.black,
              ))),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: ph,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: "phone",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.phone_android,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
