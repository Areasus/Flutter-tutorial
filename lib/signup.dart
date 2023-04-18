import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  var sUser = TextEditingController();

  var sPass = TextEditingController();

  var sRPass = TextEditingController();

  @override
  void initState() {
    super.initState();
    // getValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUP"),
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: sUser,
                decoration: InputDecoration(
                  label: Text("Username"),
                  hintText: "username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: sPass,
                obscureText: true,
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
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: sPass,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    label: Text("confirmation pass"),
                    // hintText: "re-password",
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
              ),
              Container(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  var username = sUser.text.toString();
                  var password = sPass.text.toString();
                  var password1 = sRPass.text.toString();
                  // final SharedPreferences prefs =
                  //     await SharedPreferences.getInstance();
                  // prefs.setString("username", username);
                  // prefs.setString("password", password);
                },
                child: Text("Sign Up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// void getValue() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   var un = prefs.getString('username');
//   var ps = prefs.getString('password');
// }
