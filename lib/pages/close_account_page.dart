import 'package:flutter/material.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class CloseAccountPage extends StatefulWidget {
  @override
  _CloseAccountPageState createState() => _CloseAccountPageState();
}

class _CloseAccountPageState extends State<CloseAccountPage> {
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
          "账户注销",
          style: titleTextStyle,
        ),
      ),
      body: Container(
        child: Center(
          child: Text("账户注销"),
        ),
      ),
    );
  }
}
