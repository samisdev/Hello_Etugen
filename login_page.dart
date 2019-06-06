import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final code = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        labelText: 'ОЮУТНЫ КОД',
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'НУУЦ ҮГ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );

    final loginButton = FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        'НЭВТРЭХ',
        style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {},
      );
    

    final guestLabel = FlatButton(
      child: Text(
        'ЗОЧИН НЭВТРЭХ',
        style: TextStyle(color: Colors.green),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            code,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            loginButton,
            guestLabel
          ],
        ),
      ),
    );
  }
}
