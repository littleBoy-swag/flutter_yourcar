import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class NotificationSettingPage extends StatefulWidget {
  @override
  _NotificationSettingPageState createState() =>
      _NotificationSettingPageState();
}

class _NotificationSettingPageState extends State<NotificationSettingPage> {
  bool _switchState = false;

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
          "通知提醒",
          style: titleTextStyle,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  "消息通知开关",
                  style: commonTextStyle,
                ),
                subtitle: Text(
                  "关闭后将不会收到任何消息推送",
                  style: smallGrayTextStyle,
                ),
                trailing: CupertinoSwitch(
                    activeColor: Color.fromARGB(255, 255, 102, 0),
                    value: _switchState,
                    onChanged: (value) {
                      setState(() {
                        _switchState = value;
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
