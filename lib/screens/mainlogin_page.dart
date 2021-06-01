import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/screens/signup_page.dart';

class MainLoginPage extends StatefulWidget {
  @override
  _MainLoginPageState createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  bool _obscureText = true;

  // String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
            image: AssetImage('assets/images/4.jpg'),
            fit: BoxFit.cover,
          )),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 150.0,
              ),
              Text(
                "Welcome Back",
                style: GoogleFonts.raleway(
                  fontStyle: FontStyle.normal,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 150.0,
              ),
              Column(children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hoverColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        border: UnderlineInputBorder(),
                        hintText: "Email",
                        hintStyle: GoogleFonts.raleway(
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                        focusColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 3.0),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: TextFormField(
                    obscureText: _obscureText,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          _toggle();
                        },
                      ),
                      border: UnderlineInputBorder(),
                      hintText: "Password",
                      hintStyle: GoogleFonts.raleway(
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                      focusColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3.0),
                      ),
                    ),
                  ),
                ),
              ]),
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Column(
                  children: [
                    ElevatedButton(
                      child: Text("Log In with Email",
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
                            builder: (context) => MainLoginPage(),
                          ),
                        );
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Divider(
                    //   thickness: 2.0,
                    //   color: Colors.white70,
                    // ),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.white,
                              height: 36,
                            )),
                      ),
                      Text(
                        "or",
                        style: GoogleFonts.raleway(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.white,
                              height: 36,
                            )),
                      ),
                    ]),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      // icon: Icon(
                      //   Icons.g,
                      //   color: Colors.pink,
                      //   size: 24.0,
                      // ),
                      child: Text("Log In with Google",
                          style: GoogleFonts.raleway(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 19.0,
                          )),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          minimumSize: Size(double.infinity, 50.0),
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          textStyle: TextStyle(
                            color: Colors.black,
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => MainLoginPage()));
                        // setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      child: Text("Sign Up",
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
                                builder: (context) => SignUpPage()));
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
