import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/login_page/template.dart';

import '../theme.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildTemplate(context, <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: instagramLogo(context),
      ),
      SizedBox(
        height: 20,
      ),
      defaultInput(context, 'Username'),
      SizedBox(
        height: 10,
      ),
      defaultInput(context, 'password'),
      SizedBox(
        height: 10,
      ),
      defaultInput(context, 'confirm password'),
      SizedBox(
        height: 10,
      ),
      defaultInput(context, 'password'),
      SizedBox(
        height: 10,
      ),
      defaultButton(() {
        Navigator.pushNamed(context, 'HomePage');
      },'Signup'),
      SizedBox(
        height: 20,
      ),
      dividerWithText('OR'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Have an account? "),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, 'LoginPage');
            },
            child: Text(
              'Login.',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    ]);
  }
}
