import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/login_page/template.dart';

import '../theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildTemplate(context,<Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: instagramLogo(context),
      ),
      SizedBox(
        height: 70,
      ),
      defaultInput(context,'Username'),
      SizedBox(
        height: 10,
      ),
      defaultInput(context,'password',password: true),
      SizedBox(
        height: 15,
      ),
      FractionallySizedBox(
        widthFactor: 1,
        child: Text(
          'Forgot password?',
          textAlign: TextAlign.right,
          style: TextStyle(color: Colors.blue),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      defaultButton(() {
        // Navigator.of(context).popUntil((route) => Navigator.of(context).canPop());
        Navigator.pushNamed(context, 'HomePage');
      },'Login'),
      SizedBox(
        height: 20,
      ),
      dividerWithText('ok'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have a account? "),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, 'SignupPage');
            },
            child: Text(
              'Signup.',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    ],
    );
  }
}
