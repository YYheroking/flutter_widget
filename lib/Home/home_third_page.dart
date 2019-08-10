import 'package:flutter/material.dart';

class HomeThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 300,
              minHeight: 100,
              maxWidth: 300,
              minWidth: 280
            ),
            child: Container(
              color: Colors.purple[200],
              child: Text('ConstrainedBox - 可控制大小的容器'),
            ),
          )
        ],
      ),
    );
  }
}