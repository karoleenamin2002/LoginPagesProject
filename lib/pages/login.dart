// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    height: 30,
                  ),
                  Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    width: 350,
                  ),
                  SizedBox(
                    height: 30,
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
                    height: 15,
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
                    )),
                  ),
                  SizedBox(
                    height: 20,
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
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            " Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 111,
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: 111,
                ))
          ]),
        ),
      ),
    );
  }
}
