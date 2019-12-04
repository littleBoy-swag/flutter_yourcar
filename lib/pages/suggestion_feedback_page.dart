import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_button.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class SuggestionFeedbackPage extends StatefulWidget {
  @override
  _SuggestionFeedbackPageState createState() => _SuggestionFeedbackPageState();
}

class _SuggestionFeedbackPageState extends State<SuggestionFeedbackPage> {
  TextEditingController _controller = TextEditingController();

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
          "意见反馈",
          style: titleTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          children: <Widget>[
            Text(
              "如果您在使用过程中发现任何问题，请留下您的宝贵建议和联系方式，我们将及时跟进解决。",
              style: commonTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "请输入您的反馈意见",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      borderSide: BorderSide.none), //BorderSide.none设置无边框
                  fillColor: Colors.white,
                  filled: true,
                ),
                textAlign: TextAlign.start,
                maxLines: 6,
                textInputAction: TextInputAction.done,
              ),
            ),
            CommonButton(
              content: "确认提交",
              callback: () {},
            )
          ],
        ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
