import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';


Widget buildTemplate(BuildContext context, List<Widget> children) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: getColor(context),
      elevation: 0,
      leading: leadingBackIcon(() {

        Navigator.pop(context);
      }, context),
      foregroundColor: Colors.black,
    ),
    body: Container(
      color: getColor(context),
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: children,
            ),
          ),
        ),
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      color: getColor(context),
      child: Container(
        height: 60,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(children: <Widget>[
          Divider(
            thickness: 0.9,
            height: 0,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'instagram To facebook',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: selectColor(Colors.black38, Colors.white38, context)),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
      elevation: 0,
    ),
  );
}
