import 'package:flutter/material.dart';
import 'package:wise_saying/sub/first.dart';
import 'package:wise_saying/sub/second.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '명언',
      home: firstpage(),
    );
  }
}

class firstpage extends StatefulWidget {

  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage>
    with SingleTickerProviderStateMixin{

  TabController? controller;
  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2, vsync: this);

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('명언'),
      ),
      body: TabBarView(
        children: <Widget>[sport(),history()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(tabs:<Tab>[
        Tab(icon: Icon(Icons.looks_one, color: Colors.blueGrey,)),
        Tab(icon: Icon(Icons.looks_two, color: Colors.blueGrey,))
        ], controller: controller,
    ),
    );
  }
  void dispose(){
    controller!.dispose();
    super.dispose();
  }
}



