import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profilepage/EditProfile.dart';

class PersonInfo extends StatefulWidget {
  const PersonInfo({Key? key}) : super(key: key);

  @override
  State<PersonInfo> createState() => _PersonInfoState();
}

class _PersonInfoState extends State<PersonInfo> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/profile.png',
                      width: 85,
                      height: 85,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(55, 60, 00, 30),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                        child: Image.asset(
                          'assets/images/edit.png',
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(100, 35, 10, 10),
                        child: Text(
                          'Vishnu',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Gilroy-SemiBold",
                            fontSize: 20,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(168, 35, 10, 10),
                      child: Icon(Icons.drive_file_rename_outline,
                          color: Colors.grey[300], size: 20),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Theme',
                      style: TextStyle(
                          color: Color(0xFFB1B5BF),
                          fontFamily: 'Gilroy-SemiBold',
                          fontWeight: FontWeight.w100,
                          fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 15, top: 10),
                    child: ListTile(
                      trailing: Transform.scale(
                        scale: .70,
                        child: CupertinoSwitch(
                          value: _lights,
                          onChanged: (bool value) {
                            setState(() {
                              _lights = value;
                            });
                          },
                        ),
                      ),
                      title: Text(
                        'Dart Mode',
                        style: TextStyle(
                            fontFamily: 'Gilroy-SemiBold',
                            fontSize: 18,
                            color: Color(0xFF525252)),
                      ),
                      leading: Icon(
                        Icons.dark_mode_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                              color: Color(0xFFB1B5BF),
                              fontFamily: 'Gilroy-SemiBold',
                              fontWeight: FontWeight.w100,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 15, top: 10),
                    child: ListTile(
                      trailing: Transform.scale(
                        scale: .70,
                        child: CupertinoSwitch(
                          value: !_lights,
                          onChanged: null,
                        ),
                      ),
                      title: Text(
                        'Mute Notification',
                        style: TextStyle(
                            fontFamily: 'Gilroy-SemiBold',
                            fontSize: 18,
                            color: Color(0xFF525252)),
                      ),
                      leading: Icon(
                        CupertinoIcons.volume_off,
                        size: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 15, top: 10),
                    child: ListTile(
                      title: Text(
                        'Teams & Condition',
                        style: TextStyle(
                            fontFamily: 'Gilroy-SemiBold',
                            fontSize: 18,
                            color: Color(0xFF525252)),
                      ),
                      leading: Icon(
                        CupertinoIcons.lock,
                        size: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 15, top: 10),
                    child: ListTile(
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          // foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        ),

                        onPressed: () {},
                        child: Text(
                          'New !',
                          style: TextStyle(
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      title: Text(
                        'About Application',
                        style: TextStyle(
                            fontFamily: 'Gilroy-SemiBold',
                            fontSize: 18,
                            color: Color(0xFF525252)),
                      ),
                      leading: Icon(CupertinoIcons.info)
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.logout, color: Color(0xFFFFBE78)),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                                color: Color(0xFFFFBE78),
                                fontFamily: 'Gilroy-SemiBold',
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
