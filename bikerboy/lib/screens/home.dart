import 'package:bikerboy/screens/orderdetail.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/sizes_helpers.dart';
import 'package:bikerboy/Components/animate.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedTabbar = 0;
  bool isSwitched = false;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget completeData() {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30.0),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              // spreadRadius: 5.0,
            )
          ]),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  ListTile(
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
                    subtitle: Text("SION"),
                    dense: true,
                  ),
                  ListTile(
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
                    subtitle: Text("SION"),
                    dense: true,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Travel Time : "),
                      Text("40min"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Arriving on : "),
                      Text("2:00 PM"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Price"),
                      Text("₹500"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("JIII"),
                      Text("JIII"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget activeData() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30.0),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  // spreadRadius: 5.0,
                )
              ]),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Opacity(
                              opacity: 0.6,
                              child: Text(
                                "Order ID : ",
                                style: TextStyle(
                                  fontFamily: "RobotoBold",
                                  fontSize: displayWidth(context) * 0.045,
                                ),
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
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Opacity(
                              opacity: 0.6,
                              child: Text(
                                "Timer : ",
                                style: TextStyle(
                                  fontFamily: "RobotoBold",
                                  fontSize: displayWidth(context) * 0.045,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "5:00",
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
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Opacity(
                              opacity: 0.6,
                              child: Text(
                                "Weight : ",
                                style: TextStyle(
                                  fontFamily: "RobotoBold",
                                  fontSize: displayWidth(context) * 0.045,
                                ),
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
                    ),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Opacity(
                              opacity: 0.6,
                              child: Text(
                                "Quantity : ",
                                style: TextStyle(
                                  fontFamily: "RobotoBold",
                                  fontSize: displayWidth(context) * 0.045,
                                ),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
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
                SizedBox(height: 10.0),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "Amount : ",
                          style: TextStyle(
                            fontFamily: "RobotoBold",
                            fontSize: displayWidth(context) * 0.05,
                          ),
                        ),
                      ),
                      Text(
                        "₹500",
                        style: TextStyle(
                          fontFamily: "RobotoBold",
                          fontSize: displayWidth(context) * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0048AA),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getData() {
    if (_selectedTabbar == 0) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30.0),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    // spreadRadius: 5.0,
                  )
                ]),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Text(
                            "Order-Id : ",
                            style: TextStyle(
                              fontFamily: "RobotoBold",
                              fontSize: displayWidth(context) * 0.05,
                            ),
                          ),
                        ),
                        Text(
                          "XYZ",
                          style: TextStyle(
                            fontFamily: "RobotoBold",
                            fontSize: displayWidth(context) * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0048AA),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
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
                          subtitle: Text("SION"),
                          dense: true,
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          minLeadingWidth: 20.0,
                          leading: Icon(
                            Icons.location_on,
                            color: Color(0xff0048AA),
                          ),
                          title: Text(
                            "Location 2",
                            style: TextStyle(
                              fontFamily: "RobotoBold",
                              fontSize: displayWidth(context) * 0.045,
                              color: Color(0xff0048AA),
                            ),
                          ),
                          subtitle: Text("ANDHERI"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Opacity(
                                opacity: 0.6,
                                child: Text(
                                  "Price : ",
                                  style: TextStyle(
                                    fontFamily: "RobotoBold",
                                    fontSize: displayWidth(context) * 0.045,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "₹50000",
                                style: TextStyle(
                                  fontFamily: "RobotoBold",
                                  fontSize: displayWidth(context) * 0.045,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0048AA),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context,
                                  SlideRightRoute(page: OrderDetail()));
                            },
                            minWidth: 250.0,
                            child: Text(
                              "Take Order",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'RobotoBold',
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            color: Color(0xff0048AA),
                            // gradient: LinearGradient(
                            //     colors: [Color(0xff0048AA), Colors.blue]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ],
      );
    } else if (_selectedTabbar == 1) {
      return activeData();
    } else if (_selectedTabbar == 2) {
      return completeData();
    }
  }

  Widget generalTab() {
    if (_selectedTabbar == 0) {
      return Tab(text: "GENERAL");
    } else {
      return Container(
        height: 35.0,
        width: 150.0,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Tab(
          text: "GENERAL",
        ),
      );
    }
  }

  Widget activeTab() {
    if (_selectedTabbar == 1) {
      return Tab(text: "ACTIVE");
    } else {
      return Container(
        height: 35.0,
        width: 150.0,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Tab(
          text: "ACTIVE",
        ),
      );
    }
  }

  Widget completeTab() {
    if (_selectedTabbar == 2) {
      return Tab(text: "COMPLETED");
    } else {
      return Container(
        height: 35.0,
        width: 150.0,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Tab(
          text: "COMPLETED",
        ),
      );
    }
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
              height: 400, //MediaQuery.of(context).size.height * 0.45,
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
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: IconButton(
                        onPressed: () {
                          //Navigator.push(context, SlideRightRoute(page: Homepage()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      controller: _tabController,
                      // give the indicator a decoration (color and border radius)
                      indicator: BoxDecoration(
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
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      onTap: (index) {
                        print(index);
                        setState(() {
                          _selectedTabbar = index;
                        });
                      },
                      tabs: [
                        // first tab [you can add an icon using the icon property]

                        Container(
                          child: generalTab(),
                        ),
                        Container(
                          child: activeTab(),
                        ),
                        Container(
                          child: completeTab(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("ON-DUTY"),
                        SizedBox(width: 8.0),
                        Container(
                          //padding: EdgeInsets.only(right: 0.01),
                          margin: EdgeInsets.only(
                              //left: displayWidth(context) * 0.2,
                              //top: displayHeight(context) *
                              ),
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: Colors.white,
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.0),
                  getData(),
                  SizedBox(height: 15.0),
                  getData(),
                  SizedBox(height: 15.0),
                  getData(),
                  SizedBox(height: 15.0),
                  getData(),
                  SizedBox(height: 100.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
