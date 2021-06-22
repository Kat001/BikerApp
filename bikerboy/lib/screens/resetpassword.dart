import 'package:bikerboy/screens/otpforgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bikerboy/Components/animate.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var _formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/patternback.jpg'),
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
                                  SlideRightRoute(page: OtpForgotPassword()));
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
                              "Reset password",
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
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                    controller: newPasswordController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please enter the new password";
                      }
                      if (value.length < 8) {
                        return " Password must be of length 8 or greater than it ";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "New Password",
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 25,
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Color(0xff0048AA),
                          width: 2.0,
                        ),
                      ),
                    )),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                    controller: confirmPasswordController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please enter the new password";
                      }
                      if (value.length < 8) {
                        return " Password must be of length 8 or greater than it ";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 25,
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Color(0xff0048AA),
                          width: 2.0,
                        ),
                      ),
                    )),
              ),
              SizedBox(height: 20.0),
              Container(
                margin: new EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
                child: MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {}
                  },
                  minWidth: 250.0,
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8.0)),
                  height: 55.0,
                  child: Text(
                    "Done",
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
      ),
    );
  }
}
