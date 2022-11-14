import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  List<Photos> photosList = [];
  Future<List<Photos>> getPhotos() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        Photos photos = Photos(title: i['title'], url: i['url'],id: i['id']);
        photosList.add(photos);
      }
      return photosList;
    }else{
      return photosList;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Course'),
      ),

      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                  future: getPhotos(),
                  builder: (context,AsyncSnapshot<List<Photos>> snapshot){
                    if(!snapshot.hasData){
                      return Text('loading');
                    }else{
                      return ListView.builder(
                          itemCount: photosList.length,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(snapshot.data![index].url)),
                                subtitle: Text(snapshot.data![index].title.toString()),
                                title : Text('Notes id : '+snapshot.data![index].id.toString()),
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

class Photos {
  Photos({required this.title, required this.url ,required this.id});
  String title , url;
  int id;

}