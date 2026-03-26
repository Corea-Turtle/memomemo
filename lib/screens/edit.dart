import 'package:flutter/material.dart';


class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
         IconButton(
           onPressed: () {  },
           icon: const Icon(Icons.delete),
           
         ), IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.save),

          ),
        ],
      ),
      body:
      Padding(
        padding: EdgeInsets.all(20),
        child:Column(
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              keyboardType:TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: '메모의 제목을 적어주세요.',
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              keyboardType:TextInputType.multiline,
              maxLines: null,
              //obscureText: true,
              decoration: InputDecoration(
                //border: OutlineInputBorder(),
                hintText: '메모의 제목을 적어주세요.',
              ),
            ),
          ]
        )
      ),
    );
  }
}
