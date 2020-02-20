import 'package:flutter/material.dart';
import 'package:starJumpTracker/secondPage.dart';
import './firstPage.dart' as firstPage;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Jump Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Star Jump Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    // super.initState();
    TabController controller = new TabController(length: 2, vsync: this);

    // @override
    // void dispose() {
    //   controller.dispose();
    //   super.dispose();
    // }

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        bottomNavigationBar: new Material(
            color: Colors.blueAccent,
            child: new TabBar(
              controller: controller,
              tabs: <Tab>[
                new Tab(icon: Icon(Icons.dashboard)),
                new Tab(icon: Icon(Icons.assignment_ind))
              ],
            )),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new firstPage.FirstHomePage(),
            new SecondPage(),
          ],
        ));
  }
}
