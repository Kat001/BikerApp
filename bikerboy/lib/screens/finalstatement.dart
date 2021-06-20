import 'package:bikerboy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:bikerboy/Components/sizes_helpers.dart';

class FinalStatement extends StatefulWidget {
  const FinalStatement({Key key}) : super(key: key);

  @override
  _FinalStatementState createState() => _FinalStatementState();
}

class _FinalStatementState extends State<FinalStatement> {
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  DateTime _dateTime;
  TimeOfDay _time = TimeOfDay.now();
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
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: 25.0, left: 40.0, right: 10.0),
                        child: Text(
                          "Statement",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: MediaQuery.of(context).size.height / 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
                child: Text(
              "Freelance Agent ID: XYZ",
              style: TextStyle(
                color: Color(0xff0048AA),
                fontWeight: FontWeight.bold,
                fontSize: displayWidth(context) * 0.05,
              ),
            )),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Date",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: displayWidth(context) * 0.07,
                          ),
                        ),
                      ),
                      Text(
                        "20-12-1999",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Duty Hrs",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: displayWidth(context) * 0.07,
                          ),
                        ),
                      ),
                      Text(
                        "10 h",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Total Orders",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: displayWidth(context) * 0.07,
                          ),
                        ),
                      ),
                      Text(
                        "25",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Total Amount",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: displayWidth(context) * 0.07,
                          ),
                        ),
                      ),
                      Text(
                        "2000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Incentive",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: displayWidth(context) * 0.07,
                          ),
                        ),
                      ),
                      Text(
                        "200",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    color: Color(0xff0048AA),
                    thickness: 5.0,
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Color(0xff0048AA),
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                      Text(
                        "2000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "To Pay",
                        style: TextStyle(
                          color: Color(0xff0048AA),
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                      Text(
                        "2000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Balanace Amt",
                        style: TextStyle(
                          color: Color(0xff0048AA),
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                      Text(
                        "2000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: displayWidth(context) * 0.07,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff0048AA), width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
