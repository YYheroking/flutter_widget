import 'package:flutter/material.dart';

class BottomBarNativegation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _BottomBarState();
  }
  
}


class _BottomBarState extends State <BottomBarNativegation> {

  int _currentIndex = 0;
  void _onTapHandel (int index){
    setState(() {
      _currentIndex = index;
    });
  }
    @override 
    Widget build (BuildContext context) {
      return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandel,
          type: BottomNavigationBarType.fixed,//tabbar大于=4个需要加上这个，不然全为白色
          // fixedColor: Colors.black,
          // selectedItemColor: Colors.blue,
          // unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('My')
            ),
          ],
        ); 
    }
  }