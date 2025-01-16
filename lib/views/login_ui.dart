// ignore_for_file: sort_child_properties_last

import 'dart:io';

import 'package:dti_sau_project/views/signup_ui.dart';
import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome Back, ',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Make it work, make it right, make it fast.',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person_outlined,
                ),
                labelText: 'E-Mail',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.fingerprint,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                ),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.06),
                backgroundColor: const Color.fromARGB(255, 43, 43, 43),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text('OR'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/googlelogo.png",
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  ),
                  Text(
                    "Sign-In with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black),
                fixedSize: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.06),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                InkWell(
                  child: Text(
                  "Sign up!",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                        builder: (context) => SignupUI(),
                      ),
                ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
