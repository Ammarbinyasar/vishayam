import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0x00ffffff).withOpacity(1.0),
              Color(0x00999999).withOpacity(1.0)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 620,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0x0092e1e2).withOpacity(1.0),
                  Color(0x000d4671).withOpacity(1.0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(190),
                    bottomRight: Radius.circular(190)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(children: [
                Image.asset(
                  'assets/login/logo.png',
                  width: 95,
                  height: 79,
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientText('SoftLocker',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    colors: [
                      Color(0x2B2A7B).withOpacity(1.0),
                      Color(0x0071A5).withOpacity(1.0),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 348,
                  height: 397,
                  decoration: BoxDecoration(
                    color: Color(0xE7EBEB).withOpacity(1.0),
                    borderRadius: BorderRadius.circular(62),
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                        // This will make the SizedBox take up remaining space
                        flex: 1,
                        child: SizedBox(height: 20),
                      ),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: Color(0x273B4A).withOpacity(1.0),
                        ),
                      ),
                      Expanded(
                        // Another Expanded for the bottom part
                        flex: 1,
                        child: SizedBox(height: 20),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
