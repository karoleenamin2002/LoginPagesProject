// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                    width: 350,
                  ),
                  SizedBox(
                    height: 60,
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
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () { Navigator.pushNamed(context, "/signup");},
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 17, horizontal: 110),
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple[200])),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
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
                left: 0,
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  width: 111,
                ))
          ]),
        ),
      ),
    );
  }
}
