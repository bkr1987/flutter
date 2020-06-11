import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  void _logoutUser() {

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: true
      ),
      body: Container(

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink,
        child: Container(
          // 可以设置具体某个方向的填充(可以同时指定多个方向)。
          margin: const EdgeInsets.only(left: 70.0, right: 70.0),
          child: Row(
            // MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // 在主轴方向占有空间的值，默认是max。
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.local_car_wash),
                iconSize: 50,
                color: Colors.white,
                onPressed: _logoutUser,
              ),
              IconButton(
                icon: Icon(Icons.add_a_photo),
                iconSize: 40,
                color: Colors.white,
                onPressed: null,
              ),
            ],
          ),
        )
      ),
    );
  }
}