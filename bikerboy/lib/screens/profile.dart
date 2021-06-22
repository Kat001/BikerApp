import 'package:bikerboy/screens/changepassword.dart';
import 'package:bikerboy/screens/login.dart';
import 'package:bikerboy/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _buildContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              decoration: InputDecoration(
            hintText: "First Name",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 25),
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
              decoration: InputDecoration(
            hintText: "Last Name",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 25),
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
              decoration: InputDecoration(
            hintText: "E-mail ID",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 25),
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
              decoration: InputDecoration(
            hintText: "Phone Number",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 25),
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
              decoration: InputDecoration(
            hintText: "Address",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 25),
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
        SizedBox(height: 30.0),
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
              Navigator.push(context, SlideLeftRoute(page: ChangePassword()));
            },
            child: Text(
              "RESET PASSWORD",
              style: TextStyle(
                color: Color(0xff0048AA),
                fontSize: MediaQuery.of(context).size.height / 50,
                fontFamily: 'RobotoBold',
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
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
              Navigator.push(context, SlideLeftRoute(page: Login()));

              // if (_formKey.currentState.validate()) {
              //   // loginUser();
              // }
            },
            // minWidth: 250.0,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8.0)),

            child: Text(
              "SAVE",
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 50,
                fontFamily: 'RobotoBold',
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            gradient: LinearGradient(colors: [Color(0xff0048AA), Colors.blue]),
          ),
        ),
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
        child: Stack(
          children: <Widget>[
            Container(
              height: 300.0, //MediaQuery.of(context).size.height * 0.3,
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
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 80.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context, SlideRightRoute());
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.white,
                            size: 70.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80.0),
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
                _buildLoginButton(),
                _buildSaveButton(),
                SizedBox(height: 50.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
