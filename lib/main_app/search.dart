import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/main_app/template.dart';
import 'package:test_app/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildTemplate(
        appBar: searchAppBar(context),
        initialIndex: 1,
        body: GridView.count(
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
          ],
        ));
  }
}
