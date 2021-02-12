import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() => runApp(LogOut());

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLogoutPage(),
    );
  }
}

class MyLogoutPage extends StatefulWidget {
  final String title;
  MyLogoutPage({Key key, this.title}) : super(key: key);
  @override
  _MyLogoutPageState createState() => _MyLogoutPageState();
}

class _MyLogoutPageState extends State<MyLogoutPage> {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Logout")),
      ),
      body: Center(
        child:
        OutlineButton(
          child: Text("Logout"),
          onPressed: () {
            signOutGoogle();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
        ),
      ),);
  }
  void signOutGoogle() async{
    await googleSignIn.signOut();
    print("User Sign Out");
  }
}