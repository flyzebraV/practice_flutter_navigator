import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageC extends StatefulWidget {
  PageC({Key? key}) : super(key: key);

  @override
  _PageC createState() => _PageC();
}

class _PageC extends State<PageC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/D");
              },
              child: const Text('Navigator.pushNamed 跳转页面D'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/D", ModalRoute.withName("/A"));
              },
              child: const Text(
                  'Navigator.pushNamedAndRemoveUntil 跳转页面D,同时关闭A之前的界面'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/D", (Route route) => false);
              },
              child: const Text(
                  'Navigator.pushNamedAndRemoveUntil 跳转页面D,关闭所有注册的页面'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil(ModalRoute.withName('/A'));
              },
              child: const Text(' Navigator.of(context).popUntil 弹出A之前的栈'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((Route route) => false);
              },
              child: const Text('  popUntil 弹出之前所有的栈（注意没有栈会黑屏）'),
            ),
          ],
        ),
      ),
    );
  }
}
