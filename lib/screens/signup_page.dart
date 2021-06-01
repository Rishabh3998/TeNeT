import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/screens/mainlogin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'),
            fit: BoxFit.cover,
          )),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 100.0,
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(
                "Create Account",
                style: GoogleFonts.raleway(
                  fontStyle: FontStyle.normal,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Column(
                  children: [
                    ElevatedButton(
                      child: Text("Sign Up",
                          style: GoogleFonts.raleway(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 19.0,
                          )),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          minimumSize: Size(double.infinity, 50.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          textStyle: TextStyle(
                            color: Colors.black,
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      thickness: 2.0,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      child: Text("Log in",
                          style: GoogleFonts.raleway(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 19.0,
                          )),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          minimumSize: Size(double.infinity, 50.0),
                          side: BorderSide(width: 1.0, color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          textStyle: TextStyle(
                            color: Colors.black,
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainLoginPage()));
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    ]));
  }
}
