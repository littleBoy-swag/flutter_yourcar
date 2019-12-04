import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 247, 250),
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "设置",
          style: titleTextStyle,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.security),
                title: Text(
                  "账号与安全",
                  style: commonTextStyle,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  //TODO 账号与安全
                },
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text(
                  "通知提醒",
                  style: commonTextStyle,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  //TODO 通知提醒
                },
              ),
            ),
            Divider(
              height: 1,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text(
                  "隐私",
                  style: commonTextStyle,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  //TODO 隐私
                },
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
                color: Colors.white,
                height: 54,
                child: InkWell(
                  onTap: () {
                    //TODO 退出登录
                  },
                  child: Center(
                    child: Text(
                      "退出登录",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 102, 0)),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
