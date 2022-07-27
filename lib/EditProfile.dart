import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:profilepage/trial.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override



  Widget _indicator (bool isActive){
    return AnimatedContainer(duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: isActive?24.0:16.0,
    decoration: BoxDecoration(color: isActive?Colors.white:Color(0xFF7B51D3),
    borderRadius: BorderRadius.all(Radius.circular(12),
    )),);
  }
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'Edit Profile Pic',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Gilroy-Medium',
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 120, top: 00),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: 150,
                    height: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(85, 120, 00, 30),
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
                      padding: EdgeInsets.fromLTRB(40, 165, 10, 10),
                      child: Text(
                        'Vishnu',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Gilroy-SemiBold",
                          fontSize: 21,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(108, 167, 10, 10),
                    child: Icon(Icons.drive_file_rename_outline,
                        color: Colors.grey[300], size: 25),
                  ),



                ],
              ),
            ),

            OnboardingScreen()



          ],


        ),

      ),

    );

  }
}




