import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firstpage(),
    );
  }
}





class Firstpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: ElevatedButton(
                child: const Text('스포츠'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> sport()),
                  );
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: const Text('역사'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> history()),
                  );
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: const Text('일상'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> day()),
                  );
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: const Text('만화'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> animation()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스포츠 명언'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text("끝날 때까지 끝난 게 아니다. -요기 베라"),
            )
          ],
        ),
      ),
    );
  }
}
class history extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('역사 명언'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text("역사는 승자의 전유물이다."),
            )
          ],
        ),
      ),
    );
  }
}
class day extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('일상 명언'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(""),
            )
          ],
        ),
      ),
    );
  }
}
class animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('만화 명언'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(""),
            )
          ],
        ),
      ),
    );
  }
}


