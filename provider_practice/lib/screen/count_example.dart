
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/count_provider.dart';
CountProvider countProvider = CountProvider();
class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final provider = context.read<CountProvider>();

    // Timer.periodic(Duration(seconds: 1),(timer) async{
    //   Future.delayed(Duration(seconds: 2));
    //    provider.increamentCount();
    // });
    provider.count;



  }
  @override
  Widget build(BuildContext context) {
    print('build');
    final provider = context.read<CountProvider>();
    // final provider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
             builder: (context,value,child){
               return Text(value.count.toString(),style: TextStyle(fontSize: 50),);
             },
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        provider.increamentCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
