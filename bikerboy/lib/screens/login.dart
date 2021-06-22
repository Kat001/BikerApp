import 'package:bikerboy/screens/createaccount.dart';
import 'package:bikerboy/screens/dashboard.dart';
import 'package:bikerboy/screens/forgotpassword.dart';
import 'package:bikerboy/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  final TextEditingController user_idController = TextEditingController();
  final TextEditingController user_passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Login.jpg'),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      height: 200.0,
                      width: 200.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: TextFormField(
                      controller: user_passController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please enter the Password";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Email or Mobile number ',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: TextFormField(
                      controller: user_passController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please enter the Password";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        new EdgeInsets.only(left: 30.0, right: 30.0, top: 40),
                    child: MaterialButton(
                      onPressed: () {
                        print("login clicked..");
                        Navigator.push(
                            context, SlideLeftRoute(page: Dashboard()));

                        // if (_formKey.currentState.validate()) {
                        //   // loginUser();
                        // }
                      },
                      minWidth: 250.0,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(8.0)),
                      height: 55.0,
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Color(0xff0043A6),
                          fontSize: 22.0,
                          fontFamily: 'RobotoBold',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context, SlideLeftRoute(page: ForgotPassword()));
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: Text(
                      'Don´t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin:
                        new EdgeInsets.only(left: 80.0, right: 80.0, top: 20),
                    child: MaterialButton(
                      // color: Color(0xFF27DEBF),
                      onPressed: () {
                        Navigator.push(
                            context, SlideLeftRoute(page: CreateAccount()));

                        // print("login clicked..");
                        // if (_formKey.currentState.validate()) {
                        //   // loginUser();
                        // }
                      },
                      minWidth: 250.0,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(8.0)),
                      height: 55.0,
                      child: Text(
                        "Create",
                        style: TextStyle(
                          color: Color(0xff0043A6),
                          fontSize: 22.0,
                          fontFamily: 'RobotoBold',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Expanded(
                  //       child: Divider(
                  //         color: Colors.white,
                  //         height: 8.0,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 8.0,
                  //     ),
                  //     Text(
                  //       'OR',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //     SizedBox(
                  //       width: 8.0,
                  //     ),
                  //     Expanded(
                  //       child: Divider(
                  //         color: Colors.white,
                  //         height: 8.0,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//   Future<void> loginUser() async {
//     String user_id = user_idController.text;
//     String user_pass = user_passController.text;

//     // http.Response res = await http.post(
//     //   'https://www.mitrahtechnology.in/apis/mitrah-api/login.php',
//     //   headers: <String, String>{
//     //     'Content-Type': 'application/json; charset=UTF-8',
//     //     "user_id": user_id,
//     //     "password": user_pass,
//     //   },
//     // );
//     // print(res.body);
//     // var responseData = json.decode(res.body);
//     // print(responseData['token']);
//     // if (responseData['success'] == 1) {
//     //   var data = responseData["user_details"];
//     //   //SharedPreferences.setMockInitialValues({});
//     //   SharedPreferences prefs = await SharedPreferences.getInstance();

//     //   prefs.setString('first_name', data['first_name']);
//     //   prefs.setString('last_name', data['last_name']);
//     //   prefs.setString('email', data['email']);
//     //   prefs.setString('phn_number', data['phn_number']);
//     //   //SharedPreferences prefs = await SharedPreferences.getInstance();

//     //   Navigator.pushReplacement(context,
//     //       MaterialPageRoute(builder: (BuildContext context) => Dashboard()));

//     //   ToastUtils.showCustomToast(context, "Sign in Successfully");
//     // } else {
//     //   showDialog(
//     //       context: context,
//     //       builder: (context) =>
//     //           CustomDialogError("Error", responseData['message'], "Cancel"));
//     // }
//   }
// }
