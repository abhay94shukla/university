import 'package:flutter/material.dart';
import 'package:university/homepage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("WELCOME BACK"),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),),
          ),
          OutlinedButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage(imagePath: imagePath, namepath: namepath, dobpath: dobpath)), (Route <dynamic> route) => false);
          }, child: Text("Continue "),),
        ],
      ),
    );
  }
}


