import 'package:bikerboy/screens/finalstatement.dart';
import 'package:bikerboy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:bikerboy/Components/sizes_helpers.dart';

class Statement extends StatefulWidget {
  const Statement({Key key}) : super(key: key);

  @override
  _StatementState createState() => _StatementState();
}

class _StatementState extends State<Statement> {
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
                            Navigator.push(context, SlideRightRoute());
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
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 35.0,
                  width: 150.0,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [Color(0xff000080), Colors.blue]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Tab(
                    text: "TODAY",
                  ),
                ),
                Container(
                  height: 35.0,
                  width: 150.0,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [Color(0xff000080), Colors.blue]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Tab(
                    text: "WEEKLY",
                  ),
                ),
              ],
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Opacity(
                opacity: 0.6,
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 30,
                  ),
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Start Date:",
                style: TextStyle(
                    color: Color(0xff0048AA),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  controller: startDateController,
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime(2022))
                        .then((date) {
                      setState(() {
                        //_dateTime = date;
                        if (date != null) {
                          startDateController.text =
                              date.toString().substring(0, 10);
                        }
                      });
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'YYYY-MM-DD',
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
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "End Date:",
                style: TextStyle(
                    color: Color(0xff0048AA),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  controller: endDateController,
                  readOnly: true,
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime(2022))
                        .then((date) {
                      setState(() {
                        //_dateTime = date;
                        if (date != null) {
                          endDateController.text =
                              date.toString().substring(0, 10);
                        }
                      });
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'YYYY-MM-DD',
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
            Container(
              margin: new EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
              child: MaterialButton(
                onPressed: () {
                  print("login clicked..");
                  Navigator.push(
                      context, SlideLeftRoute(page: FinalStatement()));
                },
                minWidth: 250.0,
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8.0)),
                height: 55.0,
                child: Text(
                  "PROCEED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 50,
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
