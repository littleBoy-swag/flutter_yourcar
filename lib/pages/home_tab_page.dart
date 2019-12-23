import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';
import 'package:flutter_yourcar/widgets/h_empty_view.dart';

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 247, 250),
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Text(
                "发现",
                style: titleTextStyle,
              ),
              onTap: () {
                print("发现");
              },
            ),
            HEmptyView(
              width: 20,
            ),
            InkWell(
              child: Text(
                "推荐",
                style: titleTextStyle,
              ),
              onTap: () {
                print("推荐");
              },
            ),
          ],
        ),
      ),
    );
  }
}
