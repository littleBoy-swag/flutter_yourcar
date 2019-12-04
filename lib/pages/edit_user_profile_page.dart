import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_yourcar/widgets/common_text_style.dart';

class EditUserProfilePage extends StatefulWidget {
  @override
  _EditUserProfilePageState createState() => _EditUserProfilePageState();
}

class _EditUserProfilePageState extends State<EditUserProfilePage> {
  String _name = "九月";
  String _gender = "男";
  String _birthday = "1995.01.01";
  String _homeTown = "江苏南京";
  String _motto = "所有随风而逝的都属于昨天的，所有历经风雨留下来的才是面向未来的";

  TextEditingController _nameController = TextEditingController();

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
          "修改个人信息",
          style: titleTextStyle,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: InkWell(
                onTap: () {
                  _showFinishEditDialog();
                },
                child: Text("完成",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 102, 0),
                    )),
              ),
            ),
          )
        ],
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
                      "点击设置头像",
                      style: commonTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "基本信息",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "昵称",
                        style: commonTextStyle,
                      ),
                      trailing: Text(
                        _name,
                        style: commonTextStyle,
                      ),
                      onTap: () {
                        _showEditNameDialog();
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: Text(
                        "性别",
                        style: commonTextStyle,
                      ),
                      trailing: Text(
                        _gender,
                        style: commonTextStyle,
                      ),
                      onTap: () {
                        _showEditGenderDialog(context);
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: Text(
                        "生日",
                        style: commonTextStyle,
                      ),
                      trailing: Text(
                        _birthday,
                        style: commonTextStyle,
                      ),
                      onTap: () {
                        _showEditBirthdayDialog();
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: Text(
                        "家乡",
                        style: commonTextStyle,
                      ),
                      trailing: Text(
                        _homeTown,
                        style: commonTextStyle,
                      ),
                      onTap: () {
                        _showEditHomeTownDialog();
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "个性签名",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Text(
                      _motto,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  void _showEditNameDialog() {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('昵称'),
            content: Card(
              elevation: 0.0,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: '请输入昵称',
                        filled: true,
                        border: InputBorder.none,
                        fillColor: Colors.grey.shade50),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('取消'),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  setState(() {
                    _name = _nameController.text;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  '确定',
                  style: TextStyle(color: Color.fromARGB(255, 255, 102, 0)),
                ),
              ),
            ],
          );
        });
  }

  void _showEditGenderDialog(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {
                setState(() {
                  _gender = "男";
                });
                Navigator.pop(context);
              },
              child: Text(
                '男',
                style: commonTextStyle,
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                setState(() {
                  _gender = "女";
                });
                Navigator.pop(context);
              },
              child: Text(
                '女',
                style: commonTextStyle,
              ),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              '取消',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 102, 0),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showEditBirthdayDialog() {}

  void _showEditHomeTownDialog() {}

  void _showEditMottoDialog() {}

  void _showFinishEditDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("确认"),
          content: Text('是否确认提交个人信息'),
          actions: <Widget>[
            //操作控件
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              textStyle: TextStyle(fontSize: 18, color: Colors.grey),
              child: Text('取消'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              textStyle: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 255, 102, 0)),
              child: Text('确定'),
            ),
          ],
        );
      },
    );
  }
}
