import 'package:flutter/material.dart';

ButtonStyle buttonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0, 10, 0, 10)),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    overlayColor: MaterialStateProperty.all<Color>(Colors.blue.shade600),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue));

TextButton defaultButton(VoidCallback f,String string) {
  return TextButton(
    style: buttonStyle,
    onPressed: f,
    child: Text(string, style: TextStyle(fontSize: 20)),
  );
}

TextField defaultInput(BuildContext context,String hintText,{bool password = false}) {
  return TextField(
    maxLines: 1,
    obscureText: password,
    decoration: InputDecoration(
      contentPadding:
          const EdgeInsets.only(left: 10.0, bottom: 2.0, top: 2.0, right: 10.0),
      filled: true,
      fillColor: selectColor(Colors.black12, Colors.white12, context),
      border: OutlineInputBorder(),
      // labelText: 'Password',
      // labelStyle:
      hintText: hintText,
    ),
  );
}

Color getColor(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? Colors.white
      : Colors.black;
}

Color selectColor(Color a, Color b, BuildContext context) {
  return Theme.of(context).brightness == Brightness.light ? a : b;
}
Image instagramLogo(BuildContext context,{double width =150}){
  return Image(
    image: Theme.of(context).brightness == Brightness.light
        ? AssetImage('assets/logo_text.png')
        : AssetImage('assets/text_logo_dark.png'),
    width: width,
  );
}

Widget dividerWithText(String string){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
          child: Divider(
            endIndent: 10,
            thickness: 1,
            height: 100,
          )),
      Text(string),
      Expanded(
          child: Divider(
            indent: 10,
            thickness: 1,
            height: 100,
          )),
    ],
  );
}
GestureDetector leadingBackIcon(VoidCallback f,BuildContext context){
  return GestureDetector(
    onTap: f,
    child:  Icon(
      Icons.keyboard_arrow_left_outlined,
      color: selectColor(Colors.black, Colors.white, context),
      size: 30,
    ),
  );
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

// const borderColor