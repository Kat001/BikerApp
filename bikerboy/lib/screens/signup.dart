import 'package:bikerboy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool agree = false;
  String dropdownValue = 'Select One';
  var _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailIdController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController aadharNumberController = TextEditingController();

  Widget _buildContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "REGISTERED AS",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
              SizedBox(width: 15.0),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),

                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    // underline: Container(
                    //   height: 2,
                    //   color: Colors.deepPurpleAccent,
                    // ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Select One',
                      'B2B',
                      'B2C',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: firstNameController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the First Name";
                }
              },
              decoration: InputDecoration(
                hintText: "First Name",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: lastNameController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the Last Name";
                }
              },
              decoration: InputDecoration(
                hintText: "Last Name",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: emailIdController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the email";
                }
              },
              decoration: InputDecoration(
                hintText: "E-mail ID",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: phoneNumberController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the Phone number";
                }
                if (value.length != 10) {
                  return " Please enter a valid number ";
                }
              },
              decoration: InputDecoration(
                hintText: "Phone Number",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: passwordController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the Password";
                }
                if (value.length < 8) {
                  return " password length should be 8 or greater than 8 ";
                }
              },
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: confirmPasswordController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the Phone number";
                }
                if (value.length < 8) {
                  return " Please enter a valid number ";
                }
              },
              decoration: InputDecoration(
                hintText: "Confirm Password",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              controller: aadharNumberController,
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please enter the Aadhar number";
                }
                // if (value.length != 10) {
                //   return " Please enter a valid number ";
                // }
              },
              decoration: InputDecoration(
                hintText: "Aadhar Number",
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 25),
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
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Material(
                child: Checkbox(
                  value: agree,
                  onChanged: (value) {
                    setState(() {
                      if (agree == true) {
                        agree = false;
                      } else {
                        agree = true;
                      }
                    });
                  },
                ),
              ),
              Text(
                'I Agree all terms and policies',
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 0.0),
          child: FlatButton(
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: Login()));
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Already have an Account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 50,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Color(0xff0048AA),
                    fontSize: MediaQuery.of(context).size.height / 50,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 9 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(top: 20),
          child: MaterialButton(
            onPressed: () {
              print("login clicked..");

              if (_formKey.currentState.validate()) {
                Navigator.push(context, SlideLeftRoute(page: Login()));
              }
            },
            minWidth: 250.0,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8.0)),
            height: 55.0,
            child: Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontFamily: 'RobotoBold',
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            gradient: LinearGradient(colors: [Color(0xff0048AA), Colors.blue]),
          ),
        ),
        // Container(
        //   height: 1.4 * (MediaQuery.of(context).size.height / 20),
        //   width: 9 * (MediaQuery.of(context).size.width / 10),
        //   margin: EdgeInsets.only(top: 20),
        //   child: RaisedButton(
        //     elevation: 5.0,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(30.0),
        //     ),
        //     onPressed: () {
        //       Navigator.push(context, SlideRightRoute(page: Login()));
        //     },
        //     child: Text(
        //       "CREATE ACCOUNT",
        //       style: TextStyle(
        //         color: Colors.white,
        //         letterSpacing: 1.5,
        //         fontSize: MediaQuery.of(context).size.height / 40,
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text("Signup"),
      // ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/patternback.jpg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(70),
                      bottomRight: const Radius.circular(70),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // _buildContainer(),
                  SizedBox(height: 70.0),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200], //Color(0xFFE4EDEF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 35.0,
                          spreadRadius: 0.0,
                        )
                      ],
                    ),
                    child: _buildContainer(),
                  ),
                  // SizedBox(height: 30.0),
                  _buildLoginButton(),
                  _buildSignUpBtn(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
