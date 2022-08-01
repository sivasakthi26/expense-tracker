import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<Color> _changeColor = [
    Color(0xFFFFE2AB),
    Color(0xFF89DBED),
    Color(0xFFFBA2BF),
    Color(0xFFFBA2BF),
    Color(0xFF52FFCF),
    Color(0xFFC27AD3),
  ];

  var selectedIndex;
  var bgColors;
  var colorSelected;

  PageController? pageController;
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    super.initState();
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 30,
          ),
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
              padding: EdgeInsets.only(left: 75, top: 00),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Container(
                          width: 100,
                          height: 100,

                          decoration: BoxDecoration(
                              color: bgColors,
                              borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/colorimg.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: PageView.builder(
                          controller: pageController,
                          onPageChanged: (index) {
                            pageNo = index;
                            setState(() {});
                          },
                          itemBuilder: (_, index) {
                            return AnimatedBuilder(
                              animation: pageController!,
                              builder: (context, child) {
                                return child!;
                              },
                              child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 70),
                                  height: 450,
                                  width: 500,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [

                                      CircleAvatar(


                                        backgroundColor: Color(0xFFF6F6F6),

                                        child: Image.asset(
                                          width:600,
                                            height:30,
                                            'assets/images/colorimg.png',),
                                      ),
                                      // SizedBox(width: 25,),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFF6F6F6),
                                        child: Image.asset(
                                            height:90,
                                            width:120,
                                            'assets/images/colorimg.png'),
                                      ),
                                      // SizedBox(width: 25,),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFF6F6F6),
                                        child: Image.asset(
                                          height:90,
                                          width:120,
                                          'assets/images/colorimg.png',
                                        ),
                                      ),
                                    ],
                                  )),
                            );
                          },
                          itemCount: 3,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: 75,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                              3,
                              (index) => Container(
                                    margin:
                                        EdgeInsets.only(left: 12, bottom: 10),
                                    child: SizedBox(
                                      child: Icon(
                                        Icons.circle,
                                        size: 12,
                                        color: pageNo == index
                                            ? Color(0xFFFFBE78)
                                            : Color(0xFFEEEEEE),
                                      ),
                                    ),
                                  )).toList(),
                        ),
                      ),
                    ],
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
                        'Vishnu S',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Gilroy-SemiBold",
                          fontSize: 21,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(125, 167, 10, 10),
                    child: Icon(Icons.drive_file_rename_outline,
                        color: Colors.grey[300], size: 25),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 40.0,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _changeColor.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          bgColors = _changeColor[index];
                          selectedIndex = index;
                          colorSelected = bgColors;
                          print('bgColor: $bgColors');
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _changeColor[index],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(.5),
                            child: selectedIndex == index
                                ? Icon(Icons.done_outlined,)
                                : null,
                          ),
                          width: 35.0,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
