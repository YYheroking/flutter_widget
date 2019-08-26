import 'package:flutter/material.dart';

class HttpDemo extends StatelessWidget {
  Widget titleW = Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '服务化电饭煲我吃完不错不错的牛不粗不不吃饱',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                'dhwfwihvcwebfiwbfuwfiuqbwufbqwbf2fufhhfh2fbfh2ffbvbbbvbvbvbbv',
                style: TextStyle(color: Colors.orange, fontSize: 14),
              )
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('51')
      ],
    ),
  );

  Widget buildSecondItem(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(text),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'data',
      home: Scaffold(
          appBar: AppBar(
            title: Text('widget.title'),
          ),
          body: ListView(
            children: <Widget>[
              Image.network(
                'https://tse1-mm.cn.bing.net/th?id=OIP.fnoMIjvlmYPMharRrsG2-wHaFj&w=141&h=106&c=8&rs=1&qlt=90&dpr=2&pid=3.1&rm=2',
                width: 600,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              titleW,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildSecondItem(Icons.airplay, 'AIRPLAY'),
                  buildSecondItem(Icons.directions_bike, 'directions_bike'),
                  buildSecondItem(Icons.bluetooth, 'bluetooth'),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'https://pan.baidu.com/play/video#/video?path=%2Fflutter%2F%E8%B5%A0%E9%80%81%2FFlutter%E5%B8%83%E5%B1%80%E4%B8%93%E9%A2%98%E8%A7%86%E9%A2%91%E8%AF%BE%E7%A8%8B%2F03%20%E7%AC%AC3%E9%9B%86%E9%A3%8E%E6%99%AF%E5%B8%83%E5%B1%80%E5%AE%9E%E4%BE%8B-%E6%95%B4%E5%90%88%E5%B8%83%E5%B1%80.mp4&t=2',
                ),
              ),
              Ink
            ],
          )),
    );
  }
}
