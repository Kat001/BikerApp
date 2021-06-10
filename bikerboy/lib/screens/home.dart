import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

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

  Widget getTabBarPages() {
    return TabBarView(controller: _tabController, children: <Widget>[
      Text("JIII"),
      Text("JIII"),
      Text("JIII"),
    ]);
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
              height: MediaQuery.of(context).size.height * 0.45,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 35),
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
                SizedBox(height: 40.0),
                TabBar(
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    color: Colors.transparent,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    // first tab [you can add an icon using the icon property]
                    Tab(
                      text: 'GENERAL',
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'ACTIVE',
                    ),
                    Tab(
                      text: 'COMPLETED',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      // first tab bar view widget
                      Center(
                        child: Text(
                          'Place Bid',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      // second tab bar view widget
                      Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: getTabBarPages(),
                )

                // Container(
                //   height: 300.0,
                //   margin: const EdgeInsets.only(
                //     top: 50,
                //     left: 15,
                //     right: 15,
                //   ),
                //   padding: const EdgeInsets.all(5.0),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.grey),
                //     borderRadius: BorderRadius.circular(20),
                //     color: Colors.grey[200], //Color(0xFFE4EDEF),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey,
                //         blurRadius: 35.0,
                //         spreadRadius: 0.0,
                //       )
                //     ],
                //   ),
                //   child: Text("kkkk"),
                // ),

                // SizedBox(height: 30.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.45,
//               width: MediaQuery.of(context).size.width,
//               child: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/patternback.jpg'),
//                     fit: BoxFit.fill,
//                   ),
//                   color: Color(0xff000066),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: const Radius.circular(70),
//                     bottomRight: const Radius.circular(70),
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 15.0, top: 35),
//                         child: IconButton(
//                           onPressed: () {
//                             //Navigator.push(context, SlideRightRoute(page: Homepage()));
//                           },
//                           icon: Icon(
//                             Icons.arrow_back_ios,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TabBar(
//                             controller: _tabController,
//                             // give the indicator a decoration (color and border radius)
//                             indicator: BoxDecoration(
//                               // borderRadius: BorderRadius.circular(
//                               //   25.0,
//                               // ),
//                               color: Colors.green,
//                             ),
//                             labelColor: Colors.white,
//                             unselectedLabelColor: Colors.black,
//                             tabs: [
//                               // first tab [you can add an icon using the icon property]
//                               Tab(
//                                 text: 'Place Bid',
//                               ),

//                               // second tab [you can add an icon using the icon property]
//                               Tab(
//                                 text: 'Buy Now',
//                               ),
//                               Tab(
//                                 text: 'Buy Now',
//                               ),
//                             ],
//                           ),
//                           Text("JIIIII"),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
