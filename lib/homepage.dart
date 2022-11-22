import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {Key? key,
      required this.imagePath,
      required this.namepath,
      required this.dobpath})
      : super(key: key);
  final String imagePath;
  final String namepath;
  final String dobpath;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Univesity"),
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Drawer(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.file(
                    height: 180,
                    File(widget.imagePath),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.namepath,style: TextStyle(fontSize: 20),),
                  Text(widget.dobpath),
                ],
              ),
              ListTile(
                title: Text("Logout"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                      (Route<dynamic> route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PROFILE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Image : User Image "),
              Text("Name : User Name "),
              Text("Date of Birth : User DOB "),
            ],
          ),
        ),
      ),
    );
  }
}
