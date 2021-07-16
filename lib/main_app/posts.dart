// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:test_app/main_app/template.dart';
// import 'package:test_app/theme.dart';
//
// class PostPage extends StatelessWidget {
//
//   const PostPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BuildTemplate(initialIndex:1,children: <Widget>[
//       Stories(),
//       SizedBox(
//         height: 5,
//       ),
//
//       Expanded(
//         // heightFactor: 1,
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           padding: EdgeInsets.zero,
//           children: [
//             Divider(height: 1,color: IconTheme.of(context).color),
//             Post(
//               image:
//               'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
//               name: 'name',
//               dp: 'assets/profile.jpg',
//               status: 'status',
//               comment: 'comment',
//             ),Divider(height: 1,color: IconTheme.of(context).color),
//             Post(
//               image:
//               'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
//               name: 'name',
//               dp: 'assets/profile.jpg',
//               status: 'status',
//               comment: 'comment',
//             ), Divider(height: 1, color: IconTheme.of(context).color),
//             Post(
//               image:
//               'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
//               name: 'name',
//               dp: 'assets/profile.jpg',
//               status: 'status',
//               comment: 'comment',
//             ),
//           ],
//         ),
//       )
//       // ListView(
//       //   // scrollDirection: Axis.horizontal,
//       //
//       //   children: [],
//       // ),
//     ]);
//   }
// }
