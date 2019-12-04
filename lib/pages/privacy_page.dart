import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  bool _switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 247, 250),
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "隐私",
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
                  "扫车牌不可识别",
                  style: commonTextStyle,
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
