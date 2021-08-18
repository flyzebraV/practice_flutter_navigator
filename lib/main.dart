import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route/page_A.dart';
import 'package:route/page_B.dart';
import 'package:route/page_C.dart';
import 'package:route/page_D.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),//被下面routes"/"替代了
      routes: <String, WidgetBuilder>{
        "/": (context) => HomePage(), //注册首页路由
        '/A': (context) => PageA(),
        '/B': (context) => PageB(),
        '/C': (context) => PageC(),
        '/D': (context) => PageD(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String _resultString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageA()));
              },
              child: const Text('Navigator.push 跳转页面A'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/A");
              },
              child: const Text('Navigator.pushNamed 跳转页面A'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.pushNamed(context, "/A",
                    arguments: "传参666");
                setState(() {
                  _resultString = result as String;
                  print('$_resultString');
                });
              },
              child: Text('Navigator.pushNamed 跳转页面A,传递参数'),
            ),
            Text('接收返回值:$_resultString'),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print('can pop');
                  Navigator.pop(context);
                } else {
                  print('not can pop');
                }
              },
              child: const Text('canPop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: const Text('Navigator.of(context).maybePop()'),
            ),
          ],
        ),
      ),
    );
  }
}
