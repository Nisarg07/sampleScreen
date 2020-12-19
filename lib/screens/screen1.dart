import 'package:flutter/material.dart';
import 'package:simpleScreen/animation/animation.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2227),
      body: Container(
        child: Stack(children: [
          Positioned(
            left: MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(
              "assets/images/logoicon2.png",
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                      1.1,
                      Image.asset(
                        "assets/images/logoicon1.png",
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ),
                    FadeAnimation(
                      1.3,
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Beyond",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9599A0),
                                  fontSize: 22.0)),
                          TextSpan(
                              text: "Dating",
                              style: TextStyle(
                                  color: Color(0xFF5C5F64), fontSize: 22.0))
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The Best Dating, Friendship and Interest matching.",
                        style: TextStyle(color: Colors.pink, fontSize: 12.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
