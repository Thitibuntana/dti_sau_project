// ignore_for_file: sort_child_properties_last

import 'package:dti_sau_project/views/login_ui.dart';
import 'package:dti_sau_project/views/signup_ui.dart';
import 'package:flutter/material.dart';

class WelcomeUI extends StatefulWidget {
  const WelcomeUI({super.key});

  @override
  State<WelcomeUI> createState() => _WelcomeUIState();
}

class _WelcomeUIState extends State<WelcomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width * 0.75,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Text(
                "DTI SAU APP 2025",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Southeast Asia University",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Created by ME DTI SAU",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.075,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.35,
                          MediaQuery.of(context).size.height * 0.05),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUI(),
                        ),
                      );
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.35,
                          MediaQuery.of(context).size.height * 0.05),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
