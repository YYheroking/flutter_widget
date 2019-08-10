import 'package:flutter/material.dart';

class HomeThirdPage extends StatelessWidget {
  List<Widget> _buildContents(int count) {
    return List.generate(count, (int index) {
      //第二个参数是个回调
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item$index',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      children: _buildContents(100),
    );
  }
}

// return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: 300,
//               minHeight: 100,
//               maxWidth: 300,
//               minWidth: 280
//             ),
//             child: Container(
//               color: Colors.purple[200],
//               child: Text('ConstrainedBox - 可控制大小的容器'),
//             ),
//           )
//         ],
//       ),
//     );
