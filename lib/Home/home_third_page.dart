import 'package:flutter/material.dart';
import 'package:flutter_widge/model/post.dart';

class HomeThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridBuilderFunc();
  }
}

class GridBuilderFunc extends StatelessWidget {
  Widget _builderContents(BuildContext context, int index) {
    return Container(
        child: Image.network(
      posts[index].imageUrl,
      fit: BoxFit.cover,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      //GridView.count  设置主轴上面的列数   GridView.extent  设置item的宽高  不能设置列数
      itemCount: posts.length,
      itemBuilder: _builderContents,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8.0),
    );
  }
}

class GridViewCountFunc extends StatelessWidget {
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
      padding: EdgeInsets.all(8),
      //GridView.count  设置主轴上面的列数   GridView.extent  设置item的宽高  不能设置列数
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
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
