import 'package:flutter/material.dart';
import 'package:water_routine/components/today_progress_component.dart';

bool isEmpty = true;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Color(0xFF0031FF),
        title: Text(
          'Today',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: screenHeight <= 568.0 ? 25 : 35,
                child: TodayProgressCard(),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'The next drink is in 00:17:00',
                    style: TextStyle(
                      fontSize: screenHeight <= 568.0 ? 20 : 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: screenHeight <= 568.0 ? 10 : 14,
                child: Container(
                  height: 100.0,
                  width: 250.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.receipt,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.receipt,
                        color: Colors.green,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.receipt,
                        color: Colors.blue,
                        size: 70.0,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(21),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 30.0,
                        )
                      ]),
                ),
              ),
              Expanded(
                flex: 15,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.av_timer,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      trailing: Text('500mls'),
                      title: Text('16:00'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.av_timer,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      trailing: Text('500mls'),
                      title: Text('16:00'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
