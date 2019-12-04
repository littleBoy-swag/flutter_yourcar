import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_button.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class EditMobileNumberPage extends StatefulWidget {
  @override
  _EditMobileNumberPageState createState() => _EditMobileNumberPageState();
}

class _EditMobileNumberPageState extends State<EditMobileNumberPage> {
  TextEditingController _phoneController = TextEditingController();

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
          "修改手机号码",
          style: titleTextStyle,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "输入手机号码",
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.book,
                  color: Colors.black87,
                ),
              ),
              keyboardType: TextInputType.number,
              maxLines: 1,
              maxLength: 11,
            ),
            Divider(
              height: 1,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入验证码",
                suffix: Text(
                  "获取验证码",
                  style: commonTextStyle,
                ),
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.enhanced_encryption,
                  color: Colors.black87,
                ),
              ),
              keyboardType: TextInputType.number,
              maxLines: 1,
              maxLength: 6,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: CommonButton(
                content: "提交",
                callback: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
