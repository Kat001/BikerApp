// import 'package:flutter/material.dart';
// import 'package:expansion_tile_card/expansion_tile_card.dart';

// class ExpansionTileCardDemo extends StatefulWidget {
//   @override
//   _ExpansionTileCardDemoState createState() => _ExpansionTileCardDemoState();
// }

// class _ExpansionTileCardDemoState extends State<ExpansionTileCardDemo> {
//   final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
//   final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
//   final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
//   final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('ExpansionTileCard Demo'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//             child: ExpansionTileCard(
//               baseColor: Colors.cyan[50],
//               expandedColor: Colors.red[50],
//               key: cardA,
//               title: Text(
//                   "Flutter Dev's FLUTTER DEVELOPMENT COMPANY is heree from my place in india"),
//               children: <Widget>[
//                 Divider(
//                   thickness: 1.0,
//                   height: 1.0,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0,
//                       vertical: 8.0,
//                     ),
//                     child: Text(
//                       "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
//                       " creative and leading-edge flutter app development solutions for customers all around the globe.",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyText2
//                           .copyWith(fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//             child: ExpansionTileCard(
//               baseColor: Colors.cyan[50],
//               expandedColor: Colors.red[50],
//               key: cardB,
//               title: Text(
//                   "Flutter Dev's FLUTTER DEVELOPMENT COMPANY is heree from my place in india"),
//               children: <Widget>[
//                 Divider(
//                   thickness: 1.0,
//                   height: 1.0,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0,
//                       vertical: 8.0,
//                     ),
//                     child: Text(
//                       "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
//                       " creative and leading-edge flutter app development solutions for customers all around the globe.",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyText2
//                           .copyWith(fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//             child: ExpansionTileCard(
//               baseColor: Colors.cyan[50],
//               expandedColor: Colors.red[50],
//               key: cardC,
//               title: Text(
//                   "Flutter Dev's FLUTTER DEVELOPMENT COMPANY is heree from my place in india"),
//               children: <Widget>[
//                 Divider(
//                   thickness: 1.0,
//                   height: 1.0,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0,
//                       vertical: 8.0,
//                     ),
//                     child: Text(
//                       "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
//                       " creative and leading-edge flutter app development solutions for customers all around the globe.",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyText2
//                           .copyWith(fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:bikerboy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bikerboy/Components/animate.dart';
import 'package:bikerboy/Components/sizes_helpers.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Faqs extends StatefulWidget {
  const Faqs({Key key}) : super(key: key);

  @override
  _FaqsState createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();

  Widget ExpnationTile() {
    return ExpansionTileCard(
      baseColor: Colors.cyan[50],
      expandedColor: Colors.red[50],
      key: cardA,
      leading: CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
      title: Text("Flutter Dev's"),
      subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
      children: <Widget>[
        Divider(
          thickness: 1.0,
          height: 1.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Text(
              "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
              " creative and leading-edge flutter app development solutions for customers all around the globe.",
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

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
                            // Navigator.push(context,
                            //     SlideRightRoute(page: CreateAccount()));
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
                          "BIKERS DOT COM(FAQ) ",
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
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    "FAQ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: displayWidth(context) * 0.06,
                    ),
                  )),
                  TextFormField(
                    // controller: _weightController,

                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please select weight.";
                      }
                    },
                    //initialValue: "data(1)",
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 0),
                      hintText: 'Search Articles',
                    ),
                    style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: ExpansionTileCard(
                baseColor: Colors.cyan[50],
                expandedColor: Colors.red[50],
                key: cardA,
                title: Text(
                    "Flutter Dev's FLUTTER DEVELOPMENT COMPANY is heree from my place in india"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                        " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: ExpansionTileCard(
                baseColor: Colors.cyan[50],
                expandedColor: Colors.red[50],
                key: cardB,
                title: Text(
                    "Flutter Dev's FLUTTER DEVELOPMENT COMPANY is heree from my place in india"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                        " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: ExpansionTileCard(
                baseColor: Colors.cyan[50],
                expandedColor: Colors.red[50],
                key: cardC,
                title: Text(
                    "Flutter Dev's FLUTTER DEVELOPMENT COMPANY is heree from my place in india"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                        " creative and leading-edge flutter app development solutions for customers all around the globe.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
