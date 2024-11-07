import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroductionPage(),
    );
  }
}

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  void initState() {
    super.initState();
    // Chuyển sang trang Login sau 10 giây
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giới thiệu Thành viên Nhóm'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nhóm 1: ',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '1. Thành viên 1: Nguyễn Thành Nghiệp\n2. Thành viên 2:Hồ Văn Huỳnh Hợp\n3. Thành viên 3: Võ Thế Dân',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Nhập'),
      ),
      body: Center(
        child: Text(
          'Trang Đăng Nhập',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
