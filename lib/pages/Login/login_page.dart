import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/consts.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});



  void _showFingerprintPopup(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: CupertinoPopupSurface(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: const Column(
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Confirm Using Your Fingerprint',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 48.0),
                  // Add your fingerprint authentication widget here
                  // This could be a fingerprint icon, text, or any other UI element
                  Icon(Icons.fingerprint, size: 50.0, color: Colors.blue),
                  SizedBox(height: 35.0),
                  Text(
                    'Touch the Fingerprint sensor',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 80.0),
                  Text.rich(
                    TextSpan(
                      text: 'Use Password',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }





  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [g1, g2],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(size.height * 0.030),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Enter your details to login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.024),
                  // Email/Mobile TextField
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mobile / Email",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: size.height * 0.010),
                      TextField(
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: kInputColor),
                        decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 25.0),
                          filled: true,
                          hintText: "Enter Mobile or Email",
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(userIcon),
                          ),
                          fillColor: kWhiteColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(37),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014),
                  // Password TextField with label
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: size.height * 0.010),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: kInputColor),
                        decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 25.0),
                          filled: true,
                          hintText: "Enter your Password",
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(keyIcon),
                          ),
                          fillColor: kWhiteColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(37),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014),
                  // Separate Row for Remind Me Checkbox and Forget Password Text Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Remind Me Checkbox
                      Row(
                        children: [
                          Checkbox(
                            value: false, // Set the initial value as needed
                            onChanged: (bool? value) {
                              // Handle checkbox value change
                            },
                          ),
                          const Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      // Forget Password Text Link
                      GestureDetector(
                        onTap: () {
                          // Handle forget password link tap
                        },
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.014),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height * 0.080,
                      decoration: BoxDecoration(
                        color: kButtonColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: size.height * 0.014),
                  SizedBox(height: size.height * 0.014),
                  // "Don't have an account? Register" linked text
                  SizedBox(height: size.height * 0.014),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        // Handle registration link tap
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: "Register",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.014),
                  Divider(height: size.height * 0.02, color: Colors.transparent),
                  SizedBox(height: size.height * 0.075),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height * 0.080,
                      child: const Text(
                        "Login using fingerprint",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onPressed: () {
                      _showFingerprintPopup(context);
                    },
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
