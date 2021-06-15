import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class FriendCard extends StatelessWidget {
  final Color color;
  final String image;
  final String name;
  final String job;
  final double rate;
  final String dep1;
  final String dep2;
  final String cost;
  final String availability;
  final String location;
  final String experience;

  FriendCard({
    @required this.color,
    @required this.image,
    @required this.name,
    @required this.rate,
    @required this.job,
    @required this.dep1,
    @required this.dep2,
    @required this.cost,
    @required this.availability,
    @required this.location,
    @required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 30, right: 20, left: 10),
      color: Colors.transparent,
      height: 460,
      width: 280,
      child: Card(
        shadowColor: Colors.lightBlue[100],
        elevation: 5,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(0),
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -10,
              right: 0,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                  Positioned(
                    top: 35,
                   left: 25,
                      child: Image.asset("assets/imges/JOIN.png",width: 70,)),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -530,
              top: 80,
              child: Container(
                height: 340,
                width: 700,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(170),
                    )),
              ),
            ),
            Positioned(
              top: 160,
              child: Container(
                height: 240,
                width: 150,
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dep1,
                      style: TextStyle(
                        fontFamily: "calibri",
                        letterSpacing: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dep2,
                      style: TextStyle(
                        fontFamily: "calibri",
                        letterSpacing: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      experience.toString() + "YEARS EXPERIENCE",
                      style: TextStyle(
                        fontFamily: "calibri",
                        letterSpacing: 1,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "COST PER",
                      style: TextStyle(
                        fontFamily: "calibri",
                        letterSpacing: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "HOUR:",
                          style: TextStyle(
                            fontFamily: "calibri",
                            letterSpacing: 2,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          cost,
                          style: TextStyle(
                              fontFamily: "calibri",
                              letterSpacing: 2,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "AVAILABILITY",
                      style: TextStyle(
                        fontFamily: "calibri",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      availability,
                      style: TextStyle(
                        fontFamily: "calibri",
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "LOCATION",
                      style: TextStyle(
                        fontFamily: "calibri",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 9,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 30,
                right: 25,
                child: Container(
                    child: ClipRRect(
                  child: Image.asset(image, height: 85),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ))),
            Positioned(
                top: 130,
                right: 10,
                child: Container(
                  // color: Colors.grey,
                  height: 60,
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        job,
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 9,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      RatingBar.readOnly(
                        size: 12,
                        maxRating: 6,
                        initialRating: rate,
                        halfFilledIcon: Icons.circle,
                        emptyColor: Colors.grey[100],
                        filledColor: Colors.green[300],
                        halfFilledColor: Colors.green[100],
                        filledIcon: Icons.circle,
                        emptyIcon: Icons.circle,
                        isHalfAllowed: true,
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
