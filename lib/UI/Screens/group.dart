import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:join/Data/group_data.dart';
import 'package:join/Provider/home_page_provider.dart';
import 'package:join/UI/CustomWidget/filter_button.dart';
import 'package:join/UI/CustomWidget/group_card.dart';
import 'package:join/UI/CustomWidget/sraech_text_field.dart';
import 'package:join/UI/CustomWidget/text_field.dart';
import 'package:join/constans.dart';

import 'package:provider/provider.dart';

class Group extends StatelessWidget {
  final double width;
  final double height;
  final double padding;
  final double appBarHeight;

  Group({
    @required this.appBarHeight,
    @required this.padding,
    @required this.height,
    @required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 150,
            width: width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<ProviderHomePage>(context, listen: false)
                          .changeIsGroup(false);
                    },
                    child: Container(
                      color: Colors.transparent,
                      width: width * .55,
                      child: Card(
                        margin: EdgeInsets.all(0),
                        color: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                        elevation: 5,
                        shadowColor: Colors.teal,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 70),
                          child: Image.asset("assets/imges/nfriend.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.transparent,
                    width: width * .57,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      )),
                      elevation: 5,
                      shadowColor: Colors.teal,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 70),
                        child: Image.asset("assets/imges/activeGroup.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Card(
            elevation: 15,
            shadowColor: Colors.teal,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: width,
                  height: 80,
                  decoration: BoxDecoration(
                    // color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(
                          30,
                        )),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 40,
                          child: SearchTextField(),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 1,
                        child: FilterButton(),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height - 260,
                  width: 300,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: groupData.length,
                    itemBuilder: (c, index) {
                      return GroupCard(
                        circleColor: groupData[index]["color"],
                        membersNumber: groupData[index]["membersNumber"],
                        location: groupData[index]["location"],
                        time: groupData[index]["time"],
                        dep1: groupData[index]["dep1"],
                        dep2: groupData[index]["dep2"],
                        made: groupData[index]["made"],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
