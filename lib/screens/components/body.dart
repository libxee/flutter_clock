import 'dart:math';

import 'package:analog_clock/constants.dart';
import 'package:analog_clock/screens/components/time_in_hour_and_minute.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clock.dart';
import 'country_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "BeiJing | With love for Yeeland",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Spacer(),
          Clock(),
          Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CountryCard(
                  country: "New York, USA",
                  timeZone: "+3 HRS | EST",
                  iconSrc: "assets/icons/Liberty.svg",
                  time: "9:20",
                  period: "PM",
                ),
                CountryCard(
                  country: "Sydney, AU",
                  timeZone: "+19 HRS | AEST",
                  iconSrc: "assets/icons/Sydney.svg",
                  time: "1:20",
                  period: "AM",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
