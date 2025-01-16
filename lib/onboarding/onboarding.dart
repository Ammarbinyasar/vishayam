import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vishayam/home/homepage.dart';
import 'package:vishayam/onboarding/onboard1.dart';
import 'package:vishayam/onboarding/onboard2.dart';
import 'package:vishayam/onboarding/onboard3.dart';

class onboard extends StatefulWidget {
  const onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {
  PageController _controller = PageController();
  bool onlast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0x92E1E2).withOpacity(1.0),
              Color(0x0D4671).withOpacity(1.0)
            ])),
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      onlast = (index == 2);
                    });
                  },
                  children: [
                    Onboard1(),
                    Onboard2(),
                    Onboard3(),
                  ],
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'HELLO ANSILA',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text('skip')),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onlast
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          },
                          child: Text('done'))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOut);
                          },
                          child: Text('next')),
                ],
              )),
        ],
      ),
    );
  }
}
