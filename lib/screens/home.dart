import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Row(children: [
            Padding(
                padding: EdgeInsets.only(left:20, top:20, bottom: 20),
                child: Text('메모메모', style: TextStyle(fontSize: 36,
                color: Colors.blue)) //TextStyle, Text
            )
          ],
          ),
          ...LoadMemo()
          // Container(color: Colors.redAccent, height: 70,),
          // Container(color: Colors.orange, height: 70,),
          // Container(color: Colors.yellow, height: 70,),
          // Container(color: Colors.green, height: 70,),
          // Container(color: Colors.blue, height: 70,),
          // Container(color: Colors.indigo, height: 70,),
          // Container(color: Colors.purpleAccent, height: 70,),
        ]
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => EditPage()
            ),
          );
        },
        tooltip: '메모를 추가하려면 클릭하세요',
        label: const Text('메모 추가'),
        icon: const Icon(Icons.add),
      ),
    );
  }

  List<Widget> LoadMemo() {
    List<Widget> memoList = [];
    memoList.add(Container(color: Colors.purpleAccent, height: 100,));
    memoList.add(Container(color: Colors.red, height: 100,));
    return memoList;
  }
}
