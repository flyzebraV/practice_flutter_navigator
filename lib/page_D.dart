import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageD extends StatefulWidget {
  PageD({Key? key}) : super(key: key);

  @override
  _PageD createState() => _PageD();
}

class _PageD extends State<PageD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面D'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('关闭页面'),
            ),
          )
        ],
      ),
    );
  }
}
