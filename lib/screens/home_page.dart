import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/screens/login_page.dart';

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
          child: Column(
            children: [
              Text("ListItem1"),
              Text("ListItem2"),
              Text("ListItem3"),
              Text("ListItem4"),
              Text("ListItem5"),
              Text("ListItem6"),
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
