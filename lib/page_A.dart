import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  PageA({Key? key}) : super(key: key);

  @override
  _PageA createState() => _PageA();
}

class _PageA extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)!.settings.arguments;
    var argumentsStr = arguments.toString();
    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text('页面A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/B");
              },
              child: const Text("Navigator.pushNamed 跳转页面B"),
            ),
            Text("接收参数：" + argumentsStr),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('返回'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "返回值ok");
              },
              child: const Text("返回参数"),
            )
          ],
        ),
      ),
    );
  }
}
