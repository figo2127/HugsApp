import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_simple_sticker_view/flutter_simple_sticker_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hugs Page',
      home: HugsPage(),
    );
  }
}

class HugsPage extends StatefulWidget {
  @override
  _HugsPageState createState() => _HugsPageState();
}

class _HugsPageState extends State<HugsPage> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int position = 0;

  FlutterSimpleStickerView _stickerView = FlutterSimpleStickerView(
      Container(
        decoration: BoxDecoration(
            color: Colors.orangeAccent,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage("assets/images/Tree.png"),
            )
        ),
      ),
    [
      Image.asset("assets/images/Bear.png"),
      Image.asset("assets/stickers/Aiseh.png"),
      Image.asset("assets/stickers/Aiyah!.png"),
      Image.asset("assets/stickers/Anyhow can.png"),
      Image.asset("assets/stickers/Bojio!.png"),
      Image.asset("assets/stickers/Can can.png"),
      Image.asset("assets/stickers/Can lah.png"),
      Image.asset("assets/stickers/Can leh.png"),
      Image.asset("assets/stickers/Can or cannot?.png"),
      Image.asset("assets/stickers/Can!.png"),
      Image.asset("assets/stickers/Can?.png"),
      Image.asset("assets/stickers/Cheem.png"),
      Image.asset("assets/stickers/Cheh!.png"),
      Image.asset("assets/stickers/Confirm confirm.png"),
      Image.asset("assets/stickers/Hello.png"),
      Image.asset("assets/stickers/Ho say.png"),
      Image.asset("assets/stickers/Huat ah.png"),
      Image.asset("assets/stickers/Kiasi.png"),
      Image.asset("assets/stickers/Mati.png"),
      Image.asset("assets/stickers/Really meh?.png"),
      Image.asset("assets/stickers/Relak ah.png"),
      Image.asset("assets/stickers/Sabo.png"),
      Image.asset("assets/stickers/Sian.png"),
      Image.asset("assets/stickers/Simi.png"),
      Image.asset("assets/stickers/So chio!.png"),
      Image.asset("assets/stickers/So sian.png"),
      Image.asset("assets/stickers/Sup.png"),
      Image.asset("assets/stickers/Swee lah!.png"),
      Image.asset("assets/stickers/Wah lau.png"),
      Image.asset("assets/stickers/Wah so shiok.png"),
      Image.asset("assets/stickers/Wait long long.png"),
      Image.asset("assets/stickers/You lor.png"),
      Image.asset("assets/stickers/Zhun bo.png"),
    ],

    // panelHeight: 150,
    // panelBackgroundColor: Colors.blue,
    // panelStickerBackgroundColor: Colors.pink,
    // panelStickercrossAxisCount: 4,
    // panelStickerAspectRatio: 1.0,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Column(
            children: <Widget>[
              SizedBox(height: 18),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                      'New Hugs',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        color: Color(0xff272727),
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset('assets/images/Yellow dot.png'),
                      SizedBox(height: 12)
                    ],
                  )
                ],
              ),
            ],
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Column(
              children: <Widget>[
                SizedBox(height: 18),
                Image.asset('assets/images/Menu icon.png'),
              ],
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                        color: Color(0xffFFC000)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Profile picture (Mocha).png'),
                          backgroundColor: Colors.grey[200],
                          radius: 40.0,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sarah Tan',
                          style: TextStyle(
                              fontSize: 21.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          'Life Lover',
                          style: TextStyle(
                            fontSize: 14.5,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.group),
                      title: Text(
                        'New Group',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[850]
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Contacts',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[850]
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.bookmark_border),
                      title: Text(
                        'Saved Messages',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[850]
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[850]
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person_add),
                      title: Text(
                        'Invite Friends',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[850]
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.comment),
                      title: Text(
                        'Hugs FAQ',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[850]
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              )
            ],
          )
      ),
      body: _stickerView,

//      Container(
//        decoration: BoxDecoration(
//            image: new DecorationImage(
//                image: new AssetImage("assets/images/Water.png"),
//                fit: BoxFit.fitWidth
//            )
//        ),
//        alignment: Alignment.topLeft,
//        child: ListView(
//          physics: NeverScrollableScrollPhysics(),
//          children: <Widget>[
//            Container(
//              child: Text(
//                "Move finger around the screen to create your unique hug",
//                style: TextStyle(
//                    fontSize: 20,
//                    fontFamily: 'Poppins',
//                    fontWeight: FontWeight.w400,
//                    color: Color(0xff989898)
//                ),
//              ),
//              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
//            ),
//            Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  SizedBox(width: 20),
//                  Text('The hug',
//                      style: TextStyle(
//                        fontFamily: 'Poppins',
//                        fontSize: 20,
//                        color: Color(0xff272727),
//                        fontWeight: FontWeight.w700,
//                      )
//                  ),
//                  SizedBox(width: 5),
//                  Column(
//                    children: <Widget>[
//                      SizedBox(width: 20),
//                      Image.asset('assets/images/Yellow dot.png'),
//                    ],
//                  ),
//                  SizedBox(width: 160),
//                  Text('Send to',
//                      style: TextStyle(
//                        fontFamily: 'Poppins',
//                        fontSize: 20,
//                        color: Color(0xff272727),
//                        fontWeight: FontWeight.w700,
//                      )
//                  ),
//                  IconButton(
//                    icon: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Image.asset('assets/images/Arrow (yellow).png'),
//                      ],
//                    ),
//                    onPressed: () {},
//                  ),
//                ],
//              ),
//            ],
//          ),
//      ),


          bottomNavigationBar: CurvedNavigationBar(
            index: 2,
        color: Colors.grey[200],
        backgroundColor: Color(0xff000000),
        buttonBackgroundColor: Color(0xffFFE289),
        height: 65,
        items: <Widget>[
          Image.asset('assets/images/Home button.png',
            height: 50,
            width: 50,
          ),
          Image.asset('assets/images/Chat button.png',
            height: 50,
            width: 50,
          ),
          Icon(
              Icons.add,
              size: 30,
              color: Color(0xff7A8FA6)
          ),
          Image.asset('assets/images/Trophy button.png',
            height: 50,
            width: 50,
          ),
          Image.asset('assets/images/Profile button.png',
            height: 50,
            width: 50,
          ),
        ],
        onTap: (index) {
          setState(() {
            position = index;
          });
        },
      ),
    );
  }
}
