import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class AccountSecurePage extends StatefulWidget {
  @override
  _AccountSecurePageState createState() => _AccountSecurePageState();
}

class _AccountSecurePageState extends State<AccountSecurePage> {
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
          "账号与安全",
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
                title: Text(
                  "your车账号",
                  style: commonTextStyle,
                ),
                trailing: Text(
                  "00000000",
                  style: commonTextStyle,
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  "手机绑定",
                  style: commonTextStyle,
                ),
                trailing: Text(
                  "17715260180",
                  style: commonTextStyle,
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  //TODO 账号注销
                },
                title: Text(
                  "账号注销",
                  style: commonTextStyle,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
