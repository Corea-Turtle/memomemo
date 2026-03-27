import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import '../database/db.dart';
import '../database/memo.dart';


class EditPage extends StatelessWidget {
  //const EditPage({super.key});
  String title = '';
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
         IconButton(
           icon: const Icon(Icons.delete),
           onPressed: () {},

         ), IconButton(
            icon: const Icon(Icons.save),
            onPressed: saveDB,

          ),
        ],
      ),
      body:
      Padding(
        padding: EdgeInsets.all(20),
        child:Column(
          children: <Widget>[
            TextField(
              onChanged: (String title){this.title = title;},
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              keyboardType:TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: '메모의 제목을 적어주세요.',
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              onChanged: (String text) {this.text = text;} ,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              keyboardType:TextInputType.multiline,
              maxLines: null,
              //obscureText: true,
              decoration: InputDecoration(
                //border: OutlineInputBorder(),
                hintText: '메모의 내용을 적어주세요.',
              ),
            ),
          ]
        )
      ),
    );
  }

  Future<void> saveDB() async{

    DBHelper sd = DBHelper();

    var fido = Memo(
      id: Str2Sha512(DateTime.now().toString()),
      title: this.title,
      text: this.text,
      createTime: DateTime.now().toString(),
      editTime: DateTime.now().toString(),
    );

    await sd.insertMemo(fido);

    print(await sd.memos());
  }

  String Str2Sha512(String text) {
    var bytes = utf8.encode(text);
    var digest = sha512.convert(bytes);

    print("Digest as bytes:  ${digest.bytes}");
    print("Digest as hex string:  ${digest}");

    return digest.toString();
  }
}
