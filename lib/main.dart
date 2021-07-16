import 'package:flutter/material.dart';
import 'package:test_app/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryIconTheme: IconThemeData(
          color: Colors.black,
        ),
        // primaryColor: Color(0xFF5B51D8)

      ),
      darkTheme: ThemeData(

        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        // iconTheme: IconThemeData(
        //   color: Colors.white,
        //
        // ),

      ),
      themeMode: ThemeMode.system,
      // home: MyHomePage(title: 'Flutter Demo Home Page 2'),
      // home: SignupPage(),
      initialRoute: "AuthPage",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
