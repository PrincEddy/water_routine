import 'package:flutter/material.dart';
import 'package:water_routine/components/today_progress_component.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar();
    double halfHeight = (MediaQuery.of(context).size.height -
            (appBar.preferredSize.height * 2)) /
        2;
    print(appBar.preferredSize.height);
    print('halfHieght=$halfHeight');
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
        child: Column(
          children: <Widget>[
            Container(
              height: halfHeight,
              child: TodayProgressCard(
                halfSizeOfBody: halfHeight,
              ),
            ),
            Expanded(
              child: Container(
                height: halfHeight,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text(
                            'The next drink is in 00:17:00',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF707070),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
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
                              Radius.circular(21.0),
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
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            child: ListTile(
                              leading: Icon(
                                Icons.av_timer,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              trailing: Text('500mls'),
                              title: Text('16:00'),
                            ),
                          ),
                          Flexible(
                            child: ListTile(
                              leading: Icon(
                                Icons.av_timer,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              trailing: Text('500mls'),
                              title: Text('16:00'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
