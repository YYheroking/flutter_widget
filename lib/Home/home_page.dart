import 'package:flutter/material.dart';
import './drawer_widget.dart';
import './bottom_bar.dart'
;
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('yaoyun'),
          elevation: 0.0,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: '抽屉效果',
          //   onPressed: () => print('object'),
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '右边1按钮',
              onPressed: () => print('右边1按钮'),
            ),
            // IconButton(
            //   icon: Icon(Icons.more_horiz),
            //   tooltip: '右边2按钮',
            //   onPressed: () => print('右边2按钮'),
            // ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black87,
            indicatorColor: Colors.black54,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist,size: 128.0,color: Colors.black12),
            Icon(Icons.change_history,size: 128.0,color: Colors.black12),
            Icon(Icons.directions_bike,size: 128.0,color: Colors.black12),

          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomBarNativegation(),
      ),
    );
  }
}
