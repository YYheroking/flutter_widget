import 'package:flutter/material.dart';
import '../model/post.dart';


class HomeFourPage extends StatelessWidget{

  Widget _pageItemBuild(BuildContext content, int index){
    return Stack(
      //Stack  显示叠加一块的小部件 =》具体需要在研究
      children: <Widget>[
        SizedBox.expand(//占用整个空间
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
           ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
              ),
              Text(
                posts[index].author,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemCount: posts.length,
        itemBuilder: _pageItemBuild,
      ),
    );
  }
}





class MyCustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // reverse: true,//页面着滚动
      // scrollDirection: Axis.vertical,
      onPageChanged: (currenPageIndex) => debugPrint('$currenPageIndex'),
      controller: PageController(
        //控制现实的界面内容
        initialPage: 1,
        // viewportFraction: 0.8,
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
    );
  }
}
