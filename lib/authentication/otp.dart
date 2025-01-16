import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vishayam/authentication/newpass.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xfffff)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 620,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0x0092e1e2).withOpacity(1.0),
                  Color(0x000d4671).withOpacity(1.0)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(190),
                    topRight: Radius.circular(190)),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Image.asset(
                  'assets/login/logo.png',
                  width: 70,
                  height: 60,
                ),
                const SizedBox(height: 20),
                GradientText(
                  'SoftLocker',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  colors: [
                    Color(0x2B2A7B).withOpacity(1.0),
                    Color(0x0071A5).withOpacity(1.0),
                  ],
                ),
                const SizedBox(height: 100),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(0, 255, 255, 255).withOpacity(1.0),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Enter the verification code we just sent on your\n email address.',
                  style: TextStyle(
                      color: Color.fromARGB(0, 48, 48, 48).withOpacity(1.0)),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildOtpInputField(),
                    const SizedBox(width: 10),
                    _buildOtpInputField(),
                    const SizedBox(width: 10),
                    _buildOtpInputField(),
                    const SizedBox(width: 10),
                    _buildOtpInputField(),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewPassword()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFFFFFF).withOpacity(1.0),
                    backgroundColor: const Color(0x0D4671).withOpacity(1.0),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  child: Text('Verify OTP'),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      text: "Didn’t receive code?",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' Resend',
                          style: TextStyle(
                              color: Color(0x0D4671).withOpacity(1.0),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOtpInputField() {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5).withOpacity(1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
