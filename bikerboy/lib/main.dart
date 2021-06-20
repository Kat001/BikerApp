import 'package:bikerboy/screens/createaccount.dart';
import 'package:bikerboy/screens/customersign.dart';
import 'package:bikerboy/screens/dashboard.dart';
import 'package:bikerboy/screens/detail.dart';
import 'package:bikerboy/screens/document.dart';
import 'package:bikerboy/screens/faqs.dart';
import 'package:bikerboy/screens/feedback.dart';
import 'package:bikerboy/screens/finalstatement.dart';
import 'package:bikerboy/screens/forgotpassword.dart';
import 'package:bikerboy/screens/home.dart';
import 'package:bikerboy/screens/login.dart';
import 'package:bikerboy/screens/orderdetail.dart';
import 'package:bikerboy/screens/otpforgotpassword.dart';
import 'package:bikerboy/screens/resetpassword.dart';
import 'package:bikerboy/screens/signup.dart';
import 'package:bikerboy/screens/statement.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    // autoLogIn();
  }

  // void autoLogIn() async {
  //   // final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // final String token = prefs.getString('token');

  //   if (token != null) {
  //     setState(() {
  //       isLoggedIn = true;
  //     });

  //     return;
  //   } else {
  //     setState(() {
  //       isLoggedIn = false;
  //     });

  //     return;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Postman",
              theme: ThemeData(
                primaryColor: Color(0xFF27DEBF),
                dividerColor: Colors.transparent,
              ),
              home:
                  Login(), //CustomerSign(), //Dashboard(), //Documentupload(), //CreateAccount(), //ResetPassword(), //OtpForgotPassword() //isLoggedIn ? Dashboard() : Homepage(),
            );
          },
        );
      },
    );
  }
}
