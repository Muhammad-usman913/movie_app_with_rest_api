import 'dart:convert';

import 'package:flutter/material.dart';

import 'models/user_model.dart';
import 'package:http/http.dart' as http;

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  List<UserModel> userList = [];
  
  Future<List<UserModel>> getUser() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    }else{
      return userList;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api practice'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getUser(),
                builder: (context,AsyncSnapshot<List<UserModel>> snapshot){
                  if(!snapshot.hasData){
                    return Text('Loading');
                  }else{
                   return ListView.builder(
                      itemCount: userList.length,
                        itemBuilder: (context,index){
                        return Card(
                          child: Column(
                            children: [
                             ReusableRow(title: 'name', value: snapshot.data![index].name.toString()),
                              ReusableRow(title: 'username', value: snapshot.data![index].username.toString()),
                              ReusableRow(title: 'email', value: snapshot.data![index].email.toString()),
                              ReusableRow(title: 'address', value: snapshot.data![index].address!.geo!.lat.toString()),



                            ],
                          ),
                        );
                        });
                  }
                }),
          )
        ],
      ),
    ); 
  }
}

class ReusableRow extends StatelessWidget {
   ReusableRow({Key? key, required this.title, required this.value}) : super(key: key);

  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
          Text(value)
        ],
      ),
    );
  }
}

