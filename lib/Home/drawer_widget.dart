import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('阿里巴巴'),
            accountEmail: Text('370484600@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img2.woyaogexing.com/2019/08/09/b7ac5f393eba49059b8aae63e44fcf7a!400x400.jpeg'),
            ),
          ),
          ListTile(
            title: Text('消息', textAlign: TextAlign.left),
            leading: Icon(Icons.message, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('消息', textAlign: TextAlign.left),
            leading: Icon(Icons.message, color: Colors.black12, size: 22),
          ),
          ListTile(
            title: Text('消息', textAlign: TextAlign.left),
            leading: Icon(Icons.message, color: Colors.black12, size: 22),
          ),
          ListTile(
            title: Text('消息', textAlign: TextAlign.left),
            leading: Icon(Icons.message, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
