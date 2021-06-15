import 'package:flutter/material.dart';

import '../../constans.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: KTextFieldTextColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
        ),
        height: 40,
        child: Center(
          child: Image.asset("assets/imges/filter.png"),
        ),
      ),
      onTapUp: (details) {
        double dx = details.globalPosition.dx;
        double dy = details.globalPosition.dy;
        double dx2 = MediaQuery.of(context).size.width - dx;
        double dy2 = MediaQuery.of(context).size.height - dy;

        showMenu(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            context: context,
            position: RelativeRect.fromLTRB(dx, dy, dx2, dy2),
            items: [
              PopupMenuItem(
                  height: 30,
                  child: GestureDetector(
                    child: Text(
                      'By Time',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.teal[300],
                          fontFamily: "calibri"),
                    ),
                    onTap: () {},
                  )),
              PopupMenuItem(
                height: 30,
                child: GestureDetector(
                  child: Text(
                    'By Location',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal[300],
                        fontFamily: "calibri"),
                  ),
                  onTap: () {},
                ),
              ),
              PopupMenuItem(
                height: 30,
                child: GestureDetector(
                  child: Text(
                    'By Field',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal[300],
                        fontFamily: "calibri"),
                  ),
                  onTap: () {},
                ),
              ),
              PopupMenuItem(
                height: 30,
                child: GestureDetector(
                  child: Text(
                    'Most popular',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal[300],
                        fontFamily: "calibri"),
                  ),
                  onTap: () {},
                ),
              ),
              PopupMenuItem(
                height: 30,
                child: GestureDetector(
                  child: Text(
                    'Highest Rated',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal[300],
                        fontFamily: "calibri"),
                  ),
                  onTap: () {},
                ),
              ),
            ]);
      },
    );
  }
}
