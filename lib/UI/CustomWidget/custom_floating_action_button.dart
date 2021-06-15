import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:join/UI/Screens/scan_qr.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constans.dart';

class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed:()=>_socialMedia(context),
    backgroundColor: KGreenColor,
      elevation: 3,
       child: Icon(Icons.share,color: Colors.white,),


    );
  }

  void _socialMedia(BuildContext context) {
    showModalBottomSheet(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (c) {
          return Container(

            height: 230,
            child: Column(
              children: [

                ListTile(
                  title: Text("Share App with Other"),
                  leading:Icon(Icons.qr_code_scanner_outlined,color: KGreenColor,size: 33,),
                  onTap: () {Navigator.of(context).pushNamed(ScanQR.id);},
                ),

                ListTile(
                  title: Text("Share via Facebook"),
                  leading: Image.asset("assets/imges/icons8-facebook-48.png",width: 40,),
                  onTap: () => _openFacebook(),
                ),
                ListTile(
                  title: Text("Share via Instagram"),
                  leading: Image.asset("assets/imges/icons8-instagram-48.png",width: 40,),
                  onTap: () => _openInstgram(),
                ),
                ListTile(
                  title: Text("Share via LinkedIn"),
                  leading: Image.asset("assets/imges/icons8-linkedin-48.png",width: 40,),
                  onTap: () => _openLinkedIn(),
                ),


              ],
            ),
          );
        });
  }



  _openLinkedIn() async {
    String _url = "https://www.linkedin.com/in/joinegypt/?originalSubdomain=eg";
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  _openFacebook() async {
    String _url = "https://www.facebook.com/joinegypt";
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  _openInstgram() async {
    String _url = "http://instagram.com/join.egypt?utm_source=qr";
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }
}
