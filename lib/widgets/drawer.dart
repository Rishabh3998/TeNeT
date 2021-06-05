import 'package:flutter/material.dart';
import 'package:login_page/screens/login_page.dart';
import 'package:login_page/screens/mainlogin_page.dart';
import 'package:login_page/screens/signup_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
            indent: 15.0,
            endIndent: 15.0,
            thickness: 2.0,
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
          // ListTile(
          //   title: Text('Feedback/Report Error'),
          //   leading: Icon(Icons.feed),
          //   onTap: () {
          //     // Update the state of the app.
          //     // ...
          //   },
          // ),
        ],
      ),
    );
  }
}
