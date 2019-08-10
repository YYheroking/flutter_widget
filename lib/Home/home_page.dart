import 'package:flutter/material.dart';
import 'package:flutter_widge/Home/home_four_page.dart';
import './drawer_widget.dart';
import './bottom_bar.dart';
import 'home_second_page.dart';
import './home_first_page.dart';
import './home_third_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('yaoyun'),
          elevation: 0.0,
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
              Tab(icon: Icon(Icons.markunread_mailbox)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.local_florist,size: 128.0,color: Colors.black12),
            HomeFirstPage(),
            HomeSecondPageDemo(),
            HomeThirdPage(),
            HomeFourPage()
            //Icon(Icons.change_history,size: 128.0,color: Colors.black12),
            //Icon(Icons.directions_bike,size: 128.0,color: Colors.black12),

          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomBarNativegation(),
      ),
    );
  }
}
