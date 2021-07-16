import 'package:flutter/material.dart';
import 'package:test_app/theme.dart';
// import 'package:flutter_svg/flutter_svg.dart'

class AuthPage extends StatelessWidget {
  void fun() {}

  Widget build(BuildContext context) {
    return Container(
      color: getColor(context),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // svg,
              Container(
                width: 100,
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: instagramLogo(context),
              ),
              SizedBox(
                height: 100,
              ),
              defaultButton(() {
                Navigator.of(context).pushNamed('LoginPage');
              },'Login'),
              SizedBox(
                height: 40,
              ),
              defaultButton(() {
                Navigator.of(context).pushNamed('SignupPage');
              },'Signup'),
            ],
          ),
        ),
      ),
    );
  }
}
