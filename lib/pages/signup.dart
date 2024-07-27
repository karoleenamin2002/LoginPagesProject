// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "SIGNUP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 27,
                        fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: 230,
                    width: 350,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 300,
                      height: 50,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple[200]),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Your Email:",
                            prefixIcon: Icon(Icons.person)),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple[200]),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password:",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 17, horizontal: 110),
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple[700])),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          " Log in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 299,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                          color: Colors.purple[900],
                        )),
                        Text(
                          "OR",
                          style: TextStyle(color: Colors.purple[900]),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                          color: Colors.purple[900],
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 27),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                color: Colors.purple[400],
                                height: 27,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          GestureDetector(onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                color: Colors.purple[400],
                                height: 27,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          GestureDetector(onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/twitter.svg",
                                color: Colors.purple[400],
                                height: 27,
                              ),
                            ),
                          ),
                        ]),
                  )
                ]),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/signup_top.png',
                width: 111,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 111,
              ))
        ]),
      ),
    ));
  }
}
