import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friends List',
      home: HuggerList(),
    );
  }
}

class HuggerList extends StatefulWidget {
  @override
  _HuggerListState createState() => _HuggerListState();
}

class _HuggerListState extends State<HuggerList> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int position = 0;

  final names = [
    'Sarah Tan',
    'Jason Wang',
    'Emma Lim',
    'Lee Kok Meng',
    'Siti Bte Ahmed',
    'Aditya Vasnani',
    'Lisa Ong',
    'Daryl Yeo',
    'Lashimi Ramasamy',
  ];

  final status = [
    'Life Lover',
    'Gracious Giver',
    'Sincere Soulmate',
    'Ambitious Achiever',
    'Empathic Extrovert',
    'Intelligent Introvert',
    'Humble Heart',
    'Decisive Doer',
    'Valiant Victor',
  ];

  final profilePic = [
    'assets/images/Profile picture (Mocha).png',
    'assets/images/Profile picture (Mocha 2).png',
    'assets/images/Profile picture (Mocha).png',
    'assets/images/Profile picture (Mocha 2).png',
    'assets/images/Profile picture (Mocha).png',
    'assets/images/Profile picture (Mocha 2).png',
    'assets/images/Profile picture (Mocha).png',
    'assets/images/Profile picture (Mocha 2).png',
    'assets/images/Profile picture (Mocha).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xfffafafa),


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
                      'Friends List',
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
                  ),
                  SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset('assets/images/Profile pic.png'),
                      SizedBox(height: 8)
                    ],
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 20,
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


      body: FloatingSearchBar.builder(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('${profilePic[index]}'),
              backgroundColor: Color(0x94FAFAFA),
              radius: 40,
            ),
            title: Text(
                '${names[index]}',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[850]
                )),
            subtitle: Text(
              '${status[index]}',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff989898)
              ),
            ),
            onTap: () {},
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
          );
        },
        itemCount: names.length,
      ),

      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        color: Colors.grey[200],
        backgroundColor: Color(0x94FAFAFA),
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