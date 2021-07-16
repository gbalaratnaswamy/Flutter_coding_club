import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

const Color purpleViolet = Color(0xFF8a3ab9);
const Color yellow = Color(0xFFfccc63);
const Color redViolet = Color(0xFFbc2a8d);
const Color redOrange = Color(0xFFe95950);

AppBar mainAppbar(context) {
  return AppBar(
    backgroundColor: getColor(context),
    elevation: 0,
    title: Image(
      image: Theme.of(context).brightness == Brightness.light
          ? AssetImage('assets/logo_text.png')
          : AssetImage('assets/text_logo_dark.png'),
      height: 30,
    ),
    centerTitle: true,
    actions: [
      Icon(Icons.tv_off_outlined),
      SizedBox(
        width: 10,
      ),
      GestureDetector(
        child: Icon(Icons.send),
        onTap: (){
          Navigator.of(context).pushNamed('MessagePage');
        },
      ),

      SizedBox(
        width: 10,
      )
    ],
    leading: Icon(Icons.camera_alt_outlined),
    foregroundColor: Colors.black,
  );
}
AppBar searchAppBar(context){
  return AppBar(
    backgroundColor: getColor(context),
    elevation: 0,
    automaticallyImplyLeading: false,
    // leading: Text('hi'),
    title: TextField(
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
    ),
    foregroundColor: Colors.black,
  );
}

class BuildTemplate extends StatefulWidget {
  final AppBar appBar;

  const BuildTemplate({Key? key, required this.body, this.initialIndex = 0,required this.appBar})
      : super(key: key);
  final Widget body;
  final initialIndex;

  @override
  _BuildTemplateState createState() => _BuildTemplateState(initialIndex);
}

class _BuildTemplateState extends State<BuildTemplate> {
  int _currentIndex = 0;

  _BuildTemplateState(int initialIndex) {
    _currentIndex = initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: Container(
        color: getColor(context),
        child: Center(
          child: FractionallySizedBox(
            // widthFactor: 0.9,
            // child: ScrollConfiguration(
            //   behavior: MyBehavior(),
            child:widget.body
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        // fixedColor: getColor(context),
        backgroundColor: getColor(context),
        selectedIconTheme: IconThemeData(color: IconTheme.of(context).color),
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: IconThemeData(color: IconTheme.of(context).color),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'home',
              activeIcon: Icon(
                Icons.home,
                size: 28,
              ),
              backgroundColor: getColor(context)),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(
              Icons.search,
              size: 28,
            ),
            label: 'search',
            backgroundColor: getColor(context),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            activeIcon: Icon(
              Icons.add,
              size: 28,
            ),
            label: 'add',
            backgroundColor: getColor(context),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(
              Icons.favorite,
              size: 28,
            ),
            label: 'favorites',
            backgroundColor: getColor(context),
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                height: 28,
                width: 28,
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/profile.jpg',
                ),
              ),
            ),
            label: 'profile',
            backgroundColor: getColor(context),
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.of(context).pushNamed("SearchPage", arguments: index);
          }
          if(index==0){
            Navigator.of(context).pushNamed("HomePage", arguments: index);
          }
          if(index==4){
            Navigator.of(context).pushNamed("ProfilePage", arguments: index);
          }
        },
      ),
    );
  }
}

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Story(),
            SizedBox(
              width: 10,
            ),
            Story(),
            SizedBox(
              width: 10,
            ),
            Story(),
            SizedBox(
              width: 10,
            ),
            Story(),
            SizedBox(
              width: 10,
            ),
            Story(),
            SizedBox(
              width: 10,
            ),
            Story(),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 2),
        // border: Gradient(),
        gradient: LinearGradient(
          colors: [
            yellow,
            purpleViolet,
            redViolet,
            redOrange,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: getColor(context), borderRadius: BorderRadius.circular(100)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(400.0),
          child: Image(
            height: 60,
            width: 60,
            fit: BoxFit.fill,
            image: AssetImage('assets/profile.jpg'),
          ),
        ),
      ),
    );
  }
}

class Post extends StatefulWidget {
  const Post(
      {Key? key,
      required this.image,
      required this.name,
      required this.dp,
      required this.status,
      required this.comment})
      : super(key: key);
  final String image, name, dp, status, comment;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: ListTile(
              dense: true,
              leading: ClipRRect(
                child: Image(
                  image: AssetImage('assets/profile.jpg'),
                  height: 45,
                  width: 45,
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              title: Text(widget.name),
              subtitle: Text(widget.status),
            ),
          ),
          Image(
            image: NetworkImage(widget.image),
            fit: BoxFit.fill,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              GestureDetector(

                onTap: () {
                  String message = liked?'unliked':'liked';
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('you have '+message+' the post'),
                      duration: Duration(milliseconds: 500),
                    ),
                  );
                  setState(() {
                    liked = !liked;
                  });
                },
                child: liked
                    ? Icon(Icons.favorite,
                        size: 30,
                        color: liked
                            ? Colors.pink
                            : Theme.of(context).iconTheme.color)
                    : Icon(Icons.favorite_outline,
                        size: 30,
                        color: liked
                            ? Colors.pink
                            : Theme.of(context).iconTheme.color),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.messenger_outline,
                size: 30,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.send,
                size: 30,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(widget.comment),
          ),
        ],
      ),
    );
  }
}
