import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/screens/login_page.dart';
import 'package:login_page/screens/mainlogin_page.dart';
import 'package:login_page/screens/signup_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HOME PAGE"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.only(top: 30.0),
            children: <Widget>[
              // SizedBox(
              //   height: 30.0,
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
              //   child: Text(
              //     'TeNet',
              //     style: GoogleFonts.raleway(
              //       fontStyle: FontStyle.normal,
              //       fontWeight: FontWeight.w600,
              //       fontSize: 30.0,
              //     ),
              //   ),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Rishabh Kumar",
                  style: TextStyle(fontSize: 25.0),
                ),
                accountEmail: Text(
                  'rsk1998200@gmail.com',
                  style: TextStyle(fontSize: 15.0),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/5.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/7.jpg'),
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Categories/Log In'),
                leading: Icon(Icons.category_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainLoginPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Saved/Sign Up'),
                leading: Icon(Icons.save),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(
                color: Colors.white60,
              ),
              ListTile(
                title: Text('About Us'),
                leading: Icon(Icons.info_outline),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Share with Friends'),
                leading: Icon(Icons.share),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Rate and Review'),
                leading: Icon(Icons.rate_review),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Feedback/Report Error'),
                leading: Icon(Icons.feed),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Stack(children: [
          Center(
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/3.jpg'),
                fit: BoxFit.cover,
              )),
              child: Column(
                children: [
                  SizedBox(
                    height: 300.0,
                  ),
                  Text(
                    "Welcome Rishabh",
                    // style: TextStyle(fontSize: 25.0, GoogleFonts.raleway(fontStyle: FontStyle.bold),)),
                    style: GoogleFonts.raleway(
                      fontStyle: FontStyle.normal,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Log in",
                      style: GoogleFonts.raleway(
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(150.0, 50.0)),
                      textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                        fontSize: 20.0,
                      )),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
