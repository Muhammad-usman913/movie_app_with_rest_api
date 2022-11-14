import 'dart:io';

import 'package:flutter/material.dart';

class MutabileStateScreen extends StatefulWidget {
  const MutabileStateScreen({Key? key}) : super(key: key);

  @override
  State<MutabileStateScreen> createState() => _MutabileStateScreenState();
}

class _MutabileStateScreenState extends State<MutabileStateScreen> {

  int x = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Mutable state screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          x++;
          setState(() {

          });
          print(x);
        },
      ),
    );
  }
}
