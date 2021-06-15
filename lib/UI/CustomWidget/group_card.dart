import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:join/constans.dart';

class GroupCard extends StatelessWidget {
  final Color circleColor;
  final String membersNumber;
  final String location;
  final String time;
  final String dep1;
  final String dep2;
  final String made;

  GroupCard({
    @required this.circleColor,
    @required this.membersNumber,
    @required this.location,
    @required this.time,
    @required this.dep1,
    @required this.dep2,
    @required this.made,
  });
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    double appBarHeight = AppBar().preferredSize.height;
    double padding = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 180,
      width: 300,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.zero,
        shadowColor: KTextFieldFillColor,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Image.asset("assets/imges/JOIN.png",width: 60,),
                  ),
                )),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: circleColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(180),
                    bottomLeft: Radius.circular(180),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 50),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  // color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    bottomLeft: Radius.circular(90),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "MEMBERS",
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      membersNumber,
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 10,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "LOCATION",
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 10,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "TIME - DATE",
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          fontFamily: "calibri", fontSize: 8, letterSpacing: 2),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.only(left: 30),
                  height: 125,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        dep1,
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        dep2,
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Made By:",
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        made,
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 8,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
