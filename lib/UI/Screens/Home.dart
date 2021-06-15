import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:join/Provider/home_page_provider.dart';
import 'package:join/UI/CustomWidget/home_floating_action_button.dart';
import 'package:join/UI/Screens/frinds.dart';
import 'package:join/UI/Screens/group.dart';
import 'package:join/UI/Screens/profile.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  static String id = "Home";
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
resizeToAvoidBottomInset: false,
      floatingActionButton: HomeFloatingActionButton(),
      floatingActionButtonLocation:FloatingActionButtonLocation.miniEndFloat ,


      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFF59c65d),
            Color(0xFF39e5cd),
          ],
          begin: FractionalOffset.center,
          end: FractionalOffset.topRight,
        )),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                height: 100,
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 15,
                      left: 35,
                      child: Image.asset(
                        "assets/imges/JOIN.png",
                        width: 90,),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                              image: AssetImage("assets/imges/preson.jpg"),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed(ProfileScreen.id);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Provider.of<ProviderHomePage>(context).isGroup
                    ? Group(
                        appBarHeight: appBarHeight,
                        padding: padding,
                        height: height,
                        width: width)
                    : Friends(
                        appBarHeight: appBarHeight,
                        padding: padding,
                        height: height,
                        width: width),
              )
            ],
          ),
        ),
      ),
    );
  }
}
