import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/main_app/template.dart';

import '../theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildTemplate(
      appBar: mainAppbar(context),
      body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
        Container(
          // widthFactor: 0.9,
          padding: EdgeInsets.all(10),
          child:TextField(
          maxLines: 1,
          decoration: InputDecoration(
            // enabledBorder: BorderSide(color: getColor(context)),
            prefixIcon: Icon(Icons.search),
            contentPadding:
            const EdgeInsets.only(left: 2.0, bottom: 0.0, top: 0.0, right: 2.0),
            filled: true,
            // focusColor: selectColor(Colors.black12, Colors.white12, context),
            // hoverColor: selectColor(Colors.black12, Colors.white12, context),
            fillColor: selectColor(Colors.black12, Colors.white12, context),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: getColor(context))
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: getColor(context))
            ),
            hintText: 'search',
          ),
        ),),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),

        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
        ListTile(
          leading: ClipRRect(child:Image.asset('assets/profile.jpg',fit: BoxFit.fill,),borderRadius: BorderRadius.circular(100),),
          title: Text('other User'),
          subtitle: Text('rescent message'),

        ),
      ]),
    );
  }
}
