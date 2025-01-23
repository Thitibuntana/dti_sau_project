import 'package:dti_sau_project/views/login_ui.dart';
import 'package:flutter/material.dart';

class SignupUI extends StatefulWidget {
  const SignupUI({super.key});

  @override
  State<SignupUI> createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: MediaQuery.of(context).size.height * 0.05,
                  ),
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
                  'Get On Board!',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create your profile to start your Journey.',
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
                  labelText: 'Full Name',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.mail_outlined,
                  ),
                  labelText: 'E-Mail',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.numbers,
                  ),
                  labelText: 'Phone No.',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.fingerprint,
                  ),
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "SIGN UP",
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
                    "Already have an Account?",
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
                    "Login!",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                  ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}