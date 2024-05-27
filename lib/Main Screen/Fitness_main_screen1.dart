import 'dart:ui';

import 'package:flutter/material.dart';

import 'screen2.dart';

class mainScreen1 extends StatelessWidget {
  const mainScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.only(top:300),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Fitnest",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text: "X",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: <Color>[
                                Color(0xFF92A3FD),
                                Color(0xFF9DCEFF),
                              ],
                              stops: [0.2, 1.0],
                            ).createShader(
                              Rect.fromLTWH(0, 0, 40, 40),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Everybody Can Train",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start ,
              children: [
                SizedBox(height: 200,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mainScreen2()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(30),
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF92A3FD),
                          Color(0xFF9DCEFF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                        child: Text("Get Started",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
