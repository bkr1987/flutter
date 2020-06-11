import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginRegisterState();
  }
}

// 使用 enum 关键字声明枚举类型
enum FormType {
  login,
  register
}

class _LoginRegisterState extends State<LoginRegisterPage> {
  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = '';
  String _password = '';

  // methods
  bool validateAndSave() {
    final form = formKey.currentState;
    if(form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }
  // design
  @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Blog App'), centerTitle: true
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: createInputs() + createButtons(),
          ),
        ),
      ),
    );
  }

  List<Widget> createInputs() {
    return [
      SizedBox(height: 10.0,),
      logo(),
      SizedBox(height: 20.0,),
      TextFormField(
        decoration: InputDecoration(labelText: '邮箱'),
        // validator
        validator: (value) {
          return value.isEmpty ? '请输入邮箱' : null;
        },
        // save
        onSaved: (value) {
          return _email = value;
        },
      ),
      SizedBox(height: 10.0,),
      TextFormField(
          decoration: InputDecoration(labelText: '密码'),
          obscureText: true, // 是否是密码
          // validator
          validator: (value) {
            return value.isEmpty ? '密码不能为空' : null;
          },
          // save
          onSaved: (value) {
            return _password = value;
          },
      ),
      SizedBox(height: 20.0,),
    ];
  }

  Widget logo() {
    return Hero (
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 110.0,
        child: Image.asset('images/app-logo.png'),
      ),
    );
  }

  List<Widget> createButtons() {
    if(_formType == FormType.login) {
      return [
        RaisedButton(
          child: Text('登录', style: TextStyle(fontSize: 20.0)),
          textColor: Colors.white,
          color: Colors.pink,
          onPressed: validateAndSave,
        ),
        FlatButton(
          child: Text('还没有账户，去注册', style: TextStyle(fontSize: 14.0)),
          textColor: Colors.red,
          onPressed: moveToRegister,
        )
      ];
    } else {
      return [
        RaisedButton(
          child: Text('注册', style: TextStyle(fontSize: 20.0)),
          textColor: Colors.white,
          color: Colors.pink,
          onPressed: validateAndSave,
        ),
        FlatButton(
          child: Text('已有账户，去登录', style: TextStyle(fontSize: 14.0)),
          textColor: Colors.red,
          onPressed: moveToLogin,
        )
      ];
    }
  }
}