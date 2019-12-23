import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_yourcar/pages/about_us_page.dart';
import 'package:flutter_yourcar/pages/account_secure_page.dart';
import 'package:flutter_yourcar/pages/close_account_page.dart';
import 'package:flutter_yourcar/pages/privacy_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _controller;
  int _index = 0;
  String _bigImg = 'images/home_green.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            body: PageView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                CloseAccountPage(),
                AccountSecurePage(),
                PrivacyPage(),
              ],
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  this._index = index;
                });
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("首页")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assessment), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("我的")),
              ],
              onTap: _onTap,
              currentIndex: _index,
            ),
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: FloatingActionButton(
                child: Image.asset(_bigImg),
                onPressed: _onBigImgTap,
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _index);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap(int index) {
    if (index != 1) {
      setState(() {
        _bigImg = 'images/home_green.png';
      });
    } else {
      setState(() {
        _bigImg = 'images/icon_home.png';
      });
    }
    _controller.jumpToPage(index);
  }

  void _onBigImgTap() {
    setState(() {
      _index = 1;
      _onTap(1);
    });
  }
}
