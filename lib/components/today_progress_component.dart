import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TodayProgressCard extends StatelessWidget {
  const TodayProgressCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: CircularPercentIndicator(
            radius: 230.0,
            lineWidth: 15.0,
            percent: 0.50,
            animation: true,
            animationDuration: 500,
            animateFromLastPercent: true,
            progressColor: Color(0xFF31FF00),
            backgroundColor: Colors.blue,
            //fillColor: Colors.white,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(),
                Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '2000mls',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'target:3000mls',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(),
                SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
