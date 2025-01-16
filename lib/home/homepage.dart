import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (reason) async {
        SystemNavigator.pop(); // Closes the app
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF021819), // Greenish-black color
        body: SafeArea(
          child: Center(
            child: Text(
              'ya buoy',
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 24.0, // Increase font size
                fontWeight: FontWeight.bold, // Make text bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
