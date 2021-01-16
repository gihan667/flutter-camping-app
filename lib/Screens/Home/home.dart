import 'package:camp_app/Models/Activity.dart';
import 'package:camp_app/Models/Place.dart';
import 'package:camp_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/ActivityCard.dart';
import 'components/PlaceCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/main1.svg',
                          width: size.width,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.35),
                      padding: EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34)
                        )
                      ),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Activities you Love',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:   FontWeight.bold,
                              color: kTextColor
                            ),
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  demoActivities.length,
                                  (index) {
                                    return ActivityCard(activity: demoActivities[index]);
                                  })
                              ],
                            ),
                          ),

                          Text(
                            'Recommended Places',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kTextColor
                            ),
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(demoPlaces.length, (index) {
                                  return PlaceCard(place: demoPlaces[index]);
                                })
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(20.0),
                            margin: EdgeInsets.only(bottom: 20.0),
                            decoration: new BoxDecoration(
                              color: Color(0XFFF5F5F5),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Create New Place',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0XFF5A5A5A)
                                      ),
                                    ),
                                    Text(
                                      'Create camping with your Friends',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0XFF5A5A5A)
                                      ),
                                    ),
                                  ],
                                ),

                                Container(
                                  child: IconButton(
                                    icon: SvgPicture.asset('assets/icons/new.svg'),
                                    onPressed: () {
                                      print('add new place');
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}