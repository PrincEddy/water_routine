import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TodayProgressCard extends StatelessWidget {
  TodayProgressCard({@required this.halfSizeOfBody});
  final double halfSizeOfBody;

  @override
  Widget build(BuildContext context) {
    double blockSize = halfSizeOfBody / 100;

    double circlePaddingTop = blockSize * 12;
    double radiusOfTheCircle = blockSize * 53;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: circlePaddingTop),
          child: CircularPercentIndicator(
            radius: radiusOfTheCircle <= 140 ? 165 : 210,
            lineWidth: 15.0,
            percent: 0.50,
            animation: true,
            animationDuration: 500,
            animateFromLastPercent: true,
            progressColor: Color(0xFF31FF00),
            backgroundColor: Colors.blue,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(),
                Text(
                  'Done',
                  style: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '2000mls',
                  style: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'target:3000mls',
                  style: TextStyle(
                    color: Color(0xFF707070),
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
