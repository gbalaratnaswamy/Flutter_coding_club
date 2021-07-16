

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/login_page/login.dart';
import 'package:test_app/login_page/signup.dart';
import 'package:test_app/main_app/home.dart';

import 'auth/auth.dart';
import 'main_app/message.dart';
import 'main_app/posts.dart';
import 'main_app/profile.dart';
import 'main_app/search.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final arg = settings.arguments;

    switch(settings.name){
      case 'AuthPage': return MaterialPageRoute(builder: (_)=>AuthPage());
      case 'LoginPage': return MaterialPageRoute(builder: (_)=>LoginPage());
      case 'SignupPage': return MaterialPageRoute(builder: (_)=>SignupPage());
      case 'HomePage': return MaterialPageRoute(builder: (_)=>HomePage());
      case 'SearchPage': return MaterialPageRoute(builder: (_)=>SearchPage());
      case 'ProfilePage': return MaterialPageRoute(builder: (_)=>ProfilePage());
      case 'MessagePage': return MaterialPageRoute(builder: (_)=>MessagePage());
      // case 'AuthPage': return MaterialPageRoute(builder: (_)=>LoginPage());
      default : return MaterialPageRoute(builder: (_)=>AuthPage());
    }

  }
}