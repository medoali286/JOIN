

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:join/UI/CustomWidget/custom_floating_action_button.dart';
import 'package:join/constans.dart';

class ProfileScreen extends StatelessWidget {
  static String id = "ProfileScreen";

  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;


    List<String> links = ['behance.net/mohamed', 'facebook.com/mohamed'];


    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(),

      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.white,
            child: Stack(
              children: [
                Image.asset(
                  "assets/imges/nat.PNG",
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: h * .1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(100, 70),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: h * .06,
                    right: w * .12,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        image: DecorationImage(
                          image: AssetImage("assets/imges/preson.jpg"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            height: 90,
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  left: w * .1,
                  child: Text(
                    "MOHAMED",
                    style: TextStyle(
                        fontFamily: "calibri",
                        fontSize: 18,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: w * .1,
                  child: Text(
                    "KAMEL",
                    style: TextStyle(
                        fontFamily: "calibri",
                        fontSize: 18,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "VIDEO EDITOR",
              style: TextStyle(
                  fontFamily: "calibri",
                  fontSize: 12,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(KProfileDescription,
                style: TextStyle(
                  fontFamily: "calibri",
                  fontSize: 12,
                  letterSpacing: 1,
                )),
          ),
          Container(
            // padding: EdgeInsets.symmetric(vertical: 15),
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "PRO MEETINGS",
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      Text("3",
                          style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                VerticalDivider(
                  color: KTextFieldFillColor,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "BRO MEETINGS",
                        style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      Text("8",
                          style: TextStyle(
                            fontFamily: "calibri",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "LINKS",
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: textLinks(links),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "INTERESTS",
                      style: TextStyle(
                          fontFamily: "calibri",
                          fontSize: 12,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: w,
                    height: 120,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 40,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  textTags(tag: "writing"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  textTags(tag: "sporting"),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [textTags(tag: "video editing")],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Positioned(
              //   bottom: 25,
              //   right: -130,
              //   child: Opacity(
              //     opacity: 1,
              //     child: Container(
              //       width: 220,
              //       height: 220,
              //       decoration: BoxDecoration(
              //         color: KTextFieldFillColor,
              //         borderRadius: BorderRadius.circular(110),
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: 20,
                right: -140,
                child: Opacity(
                  opacity: 1,
                  child: Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      color: KTextFieldFillColor,
                      borderRadius: BorderRadius.circular(120),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                right: -135,
                child: Opacity(
                  opacity: .5,
                  child: Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(120),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }

  List<Widget> textLinks(List<String> links) {
    List<Widget> results = [];
    links.forEach((element) {
      results.add(
        Text(
          element.toUpperCase(),
          style: TextStyle(
              fontFamily: "calibri",
              fontSize: 12,
              letterSpacing: 1,
              color: Colors.lightBlue[500]),
        ),
      );
      results.add(SizedBox(
        height: 10,
      ));
    });
    return results;
  }

  Widget textTags({String tag}) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: KLoginButtonColor,
        ),
        child: Text(
          tag.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 1,
            color: Colors.white,
            fontFamily: "calibri",
          ),
        ),
      ),
    );
  }
}
