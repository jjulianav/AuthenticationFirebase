import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gtadvogacia/screens/Login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _auth.signOut();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
