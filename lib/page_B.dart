import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageB extends StatefulWidget {
  PageB({Key? key}) : super(key: key);

  @override
  _PageB createState() => _PageB();
}

class _PageB extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/C");
              },
              child: const Text('Navigator.pushNamed 跳转页面C'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/C");
              },
              child: const Text('pushReplacementNamed 关闭当前页面再跳转页面C'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/C");
              },
              child: const Text('popAndPushNamed 关闭当前页面再跳转页面C'),
            ),

          ],
        ),
      ),
    );
  }
}
