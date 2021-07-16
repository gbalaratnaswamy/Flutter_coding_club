import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/main_app/template.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildTemplate(
      appBar: mainAppbar(context),
      body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
        Stories(),
        SizedBox(
          height: 5,
        ),
        Divider(height: 1, color: IconTheme.of(context).color),
        Post(
          image:
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
          name: 'name',
          dp: 'assets/profile.jpg',
          status: 'status',
          comment: 'comment',
        ),
        Divider(height: 1, color: IconTheme.of(context).color),
        Post(
          image:
              'https://i.pinimg.com/564x/e9/29/1c/e9291cc39e820cd4afc6e58618dfc9e0.jpg',
          name: 'name',
          dp: 'assets/profile.jpg',
          status: 'status',
          comment: 'comment',
        ),
        Divider(height: 1, color: IconTheme.of(context).color),
        Post(
          image:
              'https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          name: 'name',
          dp: 'assets/profile.jpg',
          status: 'status',
          comment: 'comment',
        ),
      ]),
    );
  }
}
