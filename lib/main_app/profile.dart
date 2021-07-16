import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/main_app/template.dart';
import 'package:test_app/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildTemplate(
      appBar: searchAppBar(context),
      initialIndex: 1,
      // body: SingleChildScrollView(
      body: ListView(
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              children: [
                Flexible(fit: FlexFit.loose, child: Container(child: Story())),
                Expanded(child: Column(children: [Text('Posts'), Text('55')])),
                Expanded(
                    child: Column(children: [Text('Followers'), Text('55')])),
                Expanded(
                    child: Column(children: [Text('Following'), Text('55')])),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Here goes \nthe descrption \nof user'),
          ),
          // Expanded(child: Text('hii'))
          // GridView.count(crossAxisCount: 3,
          //   shrinkWrap: true,
          //   children: [Text('hii')],
          // )

            GridView.count(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              children: [
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                  fit: BoxFit.fill,
                ),
              //
              ],
            ),
          ],
      ),

    );
  }
}
