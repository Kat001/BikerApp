import 'package:bikerboy/screens/customersign.dart';
import 'package:bikerboy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:bikerboy/Components/sizes_helpers.dart';

class OrderDetail extends StatefulWidget {
  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  bool agree = false;
  String dropdownValue = 'Select One';
  Widget _buildContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      "Order ID : ",
                      style: TextStyle(
                        fontFamily: "RobotoBold",
                        fontSize: displayWidth(context) * 0.045,
                      ),
                    ),
                  ),
                  Text(
                    "XYZ",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: displayWidth(context) * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0048AA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      "Product Name : ",
                      style: TextStyle(
                        fontFamily: "RobotoBold",
                        fontSize: displayWidth(context) * 0.045,
                      ),
                    ),
                  ),
                  Text(
                    "XYZ",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: displayWidth(context) * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0048AA),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.control_point,
                    color: Color(0xff0048AA),
                  ),
                  minLeadingWidth: 20.0,
                  title: Text(
                    "Location 1",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: displayWidth(context) * 0.045,
                      color: Color(0xff0048AA),
                    ),
                  ),
                  subtitle: Text("Flat number, Building,sector."),
                  dense: true,
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Color(0xff0048AA),
                  ),
                  minLeadingWidth: 20.0,
                  title: Text(
                    "Location 2",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: displayWidth(context) * 0.045,
                      color: Color(0xff0048AA),
                    ),
                  ),
                  subtitle: Text("Flat number, Building,sector."),
                  dense: true,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      "Weight : ",
                      style: TextStyle(
                        fontFamily: "RobotoBold",
                        fontSize: displayWidth(context) * 0.045,
                      ),
                    ),
                  ),
                  Text(
                    "1 Kg",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: displayWidth(context) * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0048AA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      "Quantity : ",
                      style: TextStyle(
                        fontFamily: "RobotoBold",
                        fontSize: displayWidth(context) * 0.045,
                      ),
                    ),
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: displayWidth(context) * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0048AA),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: Color(0xff0048AA),
                  child: Text(
                    "From",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Color(0xff0048AA),
                thickness: 3.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Opacity(
                opacity: 0.6,
                child: Text(
                  "Customer Name : ",
                  style: TextStyle(
                    fontFamily: "RobotoBold",
                    fontSize: displayWidth(context) * 0.045,
                  ),
                ),
              ),
              Text(
                "XYZ",
                style: TextStyle(
                  fontFamily: "RobotoBold",
                  fontSize: displayWidth(context) * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0048AA),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Opacity(
                opacity: 0.6,
                child: Text(
                  "Customer Details : ",
                  style: TextStyle(
                    fontFamily: "RobotoBold",
                    fontSize: displayWidth(context) * 0.045,
                  ),
                ),
              ),
              Text(
                "XYZ",
                style: TextStyle(
                  fontFamily: "RobotoBold",
                  fontSize: displayWidth(context) * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0048AA),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: Color(0xff0048AA),
                  child: Text(
                    "To",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Color(0xff0048AA),
                thickness: 3.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Opacity(
                opacity: 0.6,
                child: Text(
                  "Customer Name : ",
                  style: TextStyle(
                    fontFamily: "RobotoBold",
                    fontSize: displayWidth(context) * 0.045,
                  ),
                ),
              ),
              Text(
                "XYZ",
                style: TextStyle(
                  fontFamily: "RobotoBold",
                  fontSize: displayWidth(context) * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0048AA),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Opacity(
                opacity: 0.6,
                child: Text(
                  "Customer Details : ",
                  style: TextStyle(
                    fontFamily: "RobotoBold",
                    fontSize: displayWidth(context) * 0.045,
                  ),
                ),
              ),
              Text(
                "XYZ",
                style: TextStyle(
                  fontFamily: "RobotoBold",
                  fontSize: displayWidth(context) * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0048AA),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  " Picked ",
                  style: TextStyle(
                    fontFamily: "RobotoBold",
                    fontSize: displayWidth(context) * 0.045,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  " On the way ",
                  style: TextStyle(
                    fontFamily: "RobotoBold",
                    fontSize: displayWidth(context) * 0.045,
                  ),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, SlideRightRoute(page: CustomerSign()));
          },
          child: Container(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              " On the way ",
              style: TextStyle(
                fontFamily: "RobotoBold",
                fontSize: displayWidth(context) * 0.045,
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
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
              Navigator.push(context, SlideLeftRoute(page: Login()));

              // if (_formKey.currentState.validate()) {
              //   // loginUser();
              // }
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 35),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context, SlideRightRoute());
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: Text(
                      'Call Details',
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
