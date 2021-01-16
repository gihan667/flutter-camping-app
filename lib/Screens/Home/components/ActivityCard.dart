import 'package:camp_app/Models/Activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ActivityCard extends StatefulWidget {
  const ActivityCard({
    Key key,
    @required this.activity
  }) : super(key: key);

  final Activity activity;

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  int selectedActivity = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
      child: SizedBox(
        width: 100.0,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedActivity = (selectedActivity == -1) ? widget.activity.id : -1;
            });
          },
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: kPrimaryColor,
                width: 1
              ),
              color: selectedActivity == widget.activity.id ? kPrimaryColor : Colors.white
            ),
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Hero(
                    tag: widget.activity.id,
                    child: SvgPicture.asset(
                      widget.activity.icon,
                      color: selectedActivity == widget.activity.id ? Colors.white : kPrimaryColor,
                    ),
                  ),
                ),

                Text(
                  widget.activity.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: selectedActivity == widget.activity.id ? Colors.white : kPrimaryColor
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}