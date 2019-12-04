import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';
import 'package:flutter_yourcar/widgets/v_empty_view.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 247, 250),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "关于我们",
          style: titleTextStyle,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Center(
                heightFactor: 2.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.extension,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your车",
                      style: titleTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "给我们评分吧",
                      style: commonTextStyle,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      "用户协议",
                      style: commonTextStyle,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      "隐私政策",
                      style: commonTextStyle,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      "联系我们",
                      style: commonTextStyle,
                    ),
                    trailing: Text(
                      "400-858-7585",
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 102, 0)),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
