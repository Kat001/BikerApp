import 'package:bikerboy/screens/createaccount.dart';
import 'package:bikerboy/screens/forgotpassword.dart';
import 'package:bikerboy/screens/resetpassword.dart';
import 'package:bikerboy/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'package:bikerboy/Components/sizes_helpers.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  var rating = 1.0;
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
                            "FEEDBACK",
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
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Share Your Feedback",
                      style: TextStyle(
                        fontSize: displayWidth(context) * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                      child: SmoothStarRating(
                    rating: rating,
                    isReadOnly: false,
                    size: 50,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: false,
                    spacing: 2.0,
                    color: Colors.white,
                    borderColor: Colors.white,
                    onRated: (value) {
                      print("rating value -> $value");
                      // print("rating value dd -> ${value.truncate()}");
                    },
                  )),
                  SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.arrow_right,
                        size: 60.0,
                        color: Colors.black,
                      ),
                      hintText: "Type Here",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.red,
                      contentPadding: EdgeInsets.only(left: 25, right: 15.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    )),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/patternback.jpg'),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
