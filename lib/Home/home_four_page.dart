import 'package:flutter/material.dart';

class HomeFourPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: PageView(
        // reverse: true,//页面着滚动
        // scrollDirection: Axis.vertical,
        onPageChanged: (currenPageIndex)=>debugPrint('$currenPageIndex'),
        controller: PageController(
          //控制现实的界面内容
          initialPage: 1,
          viewportFraction: 0.8,
        ),
        children: <Widget>[
          Container(
            color: Colors.purple[200],
            alignment: Alignment(0.0, 0.0),
            child: Text('ONE'),
          ),
          Container(
            color: Colors.orange[200],
            alignment: Alignment(0.0, 0.0),
            child: Text('TWO'),
          ),
          Container(
            color: Colors.blue[200],
            alignment: Alignment(0.0, 0.0),
            child: Text('THREE'),
          ),
          Container(
            color: Colors.green[200],
            alignment: Alignment(0.0, 0.0),
            child: Text('FOUR'),
          ),
        ],
      ),
    );
  }
}