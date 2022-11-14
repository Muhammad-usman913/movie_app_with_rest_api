
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/example_one_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Provider'),
      ),
      body: Consumer<ExampleOneProvider>(
        builder: (context,snapshot,child){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                min: 0,
                max: 1,
                value: snapshot.value,
                onChanged: (val){
                  snapshot.changeValue(val);

                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(snapshot.value)
                      ),
                      child: Center(
                        child: Text('Container1'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(snapshot.value)
                      ),
                      child: Center(
                        child: Text('Container2'),
                      ),
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
