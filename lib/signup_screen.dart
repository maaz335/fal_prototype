import 'package:fal_prototype/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String button = "client";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            controller: ScrollController(),
            child: Container(
              width: double.infinity,
              // height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      "Create an Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: button == "client1"
                                  ? CupertinoColors.darkBackgroundGray
                                  : CupertinoColors.white,
                              foregroundColor: button == "client1"
                                  ? Colors.yellowAccent
                                  : CupertinoColors.darkBackgroundGray,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              button = "client1";
                              setState(() {});
                            },
                            child: Text("Client"),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: button == "client2"
                                  ? CupertinoColors.darkBackgroundGray
                                  : CupertinoColors.white,
                              foregroundColor: button == "client2"
                                  ? Colors.yellowAccent
                                  : CupertinoColors.darkBackgroundGray,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              button = "client2";
                              setState(() {});
                            },
                            child: Text("Lawyer"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "User-name",
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  button == "client2"
                      ? Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          width: double.infinity,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Location",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              focusColor: Colors.black,
                              focusedBorder: OutlineInputBorder(),
                            ),
                            style: TextStyle(),
                          ),
                        )
                      : Container(),
                  button == "client2"
                      ? Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          width: double.infinity,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Speciality",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              focusColor: Colors.black,
                              focusedBorder: OutlineInputBorder(),
                            ),
                            style: TextStyle(),
                          ),
                        )
                      : Container(),
                  button == "client2"
                      ? Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          width: double.infinity,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Fees",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              focusColor: Colors.black,
                              focusedBorder: OutlineInputBorder(),
                            ),
                            style: TextStyle(),
                          ),
                        )
                      : Container(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "CNIC",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        focusColor: Colors.black,
                        focusedBorder: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Already have an Account?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 50),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CupertinoColors.darkBackgroundGray,
                        foregroundColor: Colors.yellowAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ResetPasswordScreen(),
                        //   ),
                        // );
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
