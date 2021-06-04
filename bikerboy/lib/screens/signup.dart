import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool agree = false;
  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.68,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 35.0,
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
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
            onPressed: () {},
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
                    color: Colors.red,
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
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {},
            child: Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Signup"),
        // ),
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
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
                _buildContainer(),
                // SizedBox(height: 30.0),
                _buildLoginButton(),
                _buildSignUpBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
