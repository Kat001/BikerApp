import 'package:bikerboy/screens/createaccount.dart';
import 'package:bikerboy/screens/forgotpassword.dart';
import 'package:bikerboy/screens/resetpassword.dart';
import 'package:bikerboy/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bikerboy/Components/animate.dart';

class VerifyAccount extends StatefulWidget {
  @override
  _VerifyAccountState createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  FocusNode pin5FocusNode;
  FocusNode pin6FocusNode;

  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();
  final TextEditingController _fifthController = TextEditingController();
  final TextEditingController _sixthController = TextEditingController();

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/pattern.jpg'),
                    fit: BoxFit.fill,
                  ),
                  color: Color(0xff000066),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 35),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                SlideRightRoute(page: CreateAccount()));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: 25.0, left: 40.0, right: 10.0),
                        child: Opacity(
                          opacity: 0.8,
                          child: Text(
                            "Verify your Account",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Center(
              child: Container(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Opacity(
                    opacity: 0.6,
                    child: Text(
                      "Please enter verification code sent to your mobile number",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )),
            ),
            SizedBox(height: 5.0),
            // Center(
            //   child: Container(
            //       child: Text(
            //     "4 digit otp. then you`ll be able to change password",
            //     style: TextStyle(fontSize: 15.0),
            //   )),
            // ),
            SizedBox(height: 50.0),
            Container(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: _firstController,
                        maxLength: 1,
                        autofocus: true,
                        obscureText: true,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          counterText: "",
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          nextField(value, pin2FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: TextFormField(
                        focusNode: pin2FocusNode,
                        controller: _secondController,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        maxLength: 1,
                        autofocus: true,
                        obscureText: true,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          counterText: "",
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          nextField(value, pin3FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: TextFormField(
                        focusNode: pin3FocusNode,
                        controller: _thirdController,
                        maxLength: 1,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        autofocus: true,
                        obscureText: true,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          nextField(value, pin4FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: TextFormField(
                        focusNode: pin4FocusNode,
                        controller: _fourthController,
                        maxLength: 1,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        autofocus: true,
                        obscureText: true,
                        style: TextStyle(fontSize: 24),
                        decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          nextField(value, pin5FocusNode);
                        },
                      ),
                    ),
                    // SizedBox(
                    //   width: 50.0,
                    //   height: 50.0,
                    //   child: TextFormField(
                    //     focusNode: pin5FocusNode,
                    //     controller: _fifthController,
                    //     maxLength: 1,
                    //     inputFormatters: [
                    //       WhitelistingTextInputFormatter.digitsOnly
                    //     ],
                    //     autofocus: true,
                    //     obscureText: true,
                    //     style: TextStyle(fontSize: 24),
                    //     decoration: InputDecoration(
                    //       counterText: "",
                    //       enabledBorder: OutlineInputBorder(),
                    //     ),
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.center,
                    //     onChanged: (value) {
                    //       nextField(value, pin6FocusNode);
                    //     },
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 50.0,
                    //   height: 50.0,
                    //   child: TextFormField(
                    //     focusNode: pin6FocusNode,
                    //     controller: _sixthController,
                    //     maxLength: 1,
                    //     inputFormatters: [
                    //       WhitelistingTextInputFormatter.digitsOnly
                    //     ],
                    //     autofocus: true,
                    //     obscureText: true,
                    //     style: TextStyle(fontSize: 24),
                    //     decoration: InputDecoration(
                    //       counterText: "",
                    //       enabledBorder: OutlineInputBorder(),
                    //     ),
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.center,
                    //     onChanged: (value) {
                    //       pin6FocusNode.unfocus();
                    //     },
                    //   ),
                    // ),
                  ],
                )),
            SizedBox(height: 50.0),
            Container(
              margin: new EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
              child: MaterialButton(
                onPressed: () {
                  print("login clicked..");
                  Navigator.push(context, SlideLeftRoute(page: Signup()));
                  // if (_formKey.currentState.validate()) {
                  //   // loginUser();
                  // }
                },
                minWidth: 250.0,
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8.0)),
                height: 55.0,
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontFamily: 'RobotoBold',
                  ),
                ),
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFF0F0F0),
                    blurRadius: 5.0,
                    spreadRadius: 5.0,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                gradient:
                    LinearGradient(colors: [Color(0xff0048AA), Colors.blue]),
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
