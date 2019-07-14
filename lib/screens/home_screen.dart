import 'package:flutter/material.dart';
import 'package:water_routine/components/today_progress_component.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Home.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
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
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 242,
                child: TodayProgressCard(),
              ),
              Expanded(
                flex: 43,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'The next drink is in 00:17:00',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 130,
                child: Container(
                  height: 100.0,
                  width: 250.0,
                  child: Card(
                    color: Colors.white,
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
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 50.0,
                        )
                      ]),
                ),
              ),
              Expanded(
                flex: 122,
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
