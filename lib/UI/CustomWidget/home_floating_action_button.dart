import 'package:flutter/material.dart';
import 'package:join/constans.dart';



class HomeFloatingActionButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

      child: Icon(Icons.add,color: Colors.white,size: 35,),
        elevation: 3,
        backgroundColor: KGreenColor,



        onPressed:()=>_createCircle(context)



    );
  }


  _createCircle(BuildContext context) {



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
            height: 130,
            child: Column(
              children: [
                ListTile(
                  title: Center(child: Text("Create BRO Circle")),
                  onTap: () {},
                ),
                ListTile(
                  title: Center(child: Text("Create PRO Circles")),
                  onTap: () {},
                )
              ],
            ),
          );
        });
  }

}
