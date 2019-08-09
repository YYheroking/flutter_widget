import 'package:flutter/material.dart';

class HomeSecondPageDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
      color: Colors.deepPurpleAccent,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      fontStyle: FontStyle.italic);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,//主轴靠左
      children: <Widget>[
        Container(
          color: Colors.black12,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(20),
          width: 300,
          height: 60,
          child: RichText(
            text: TextSpan(text: 'yaoyun', style: _textStyle, children: [
              TextSpan(
                  text: '.com',
                  style: TextStyle(fontSize: 22, color: Colors.orange))
            ]),
          ),
        ),
        SizedBox(child: Text('.............'),height: 15.0,width: 200,),
        Container(
          //装饰器
          decoration: BoxDecoration(
            color: Colors.orange[300],
            border: Border.all(
              color: Colors.red,
              width: 2.0,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft: Radius.circular(13)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black12,
                blurRadius: 1,
                spreadRadius: 6
              )
            ]
          ),
          child: Icon(Icons.dashboard,color: Colors.purple,size: 44),
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(20),
        
        )
      ],
    );
  }
}

// Text(
//       'maxLines、overflow：指定文本显示的最大行数，默认情况下，文本是自动折行的，如果指定此参数，则文本最多不会超过指定的行。如果有多余的文本，可以通过overflow来指定截断方式，默认是直接截断，本例中指定的截断方式TextOverflow.ellipsis，',
//       textAlign: TextAlign.left,
//       style: _textStyle,
//       maxLines: 4,
//       overflow: TextOverflow.ellipsis,

//       );
