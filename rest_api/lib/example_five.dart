import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'models/products_model.dart';


class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> {

  Future<ProductsModel> getProducts() async{
    print('get products method is called');
    final response = await http.get(Uri.parse('https://webhook.site/3aea476e-f661-4135-93d4-71a651f9f733'));
    var data = jsonDecode(response.body.toString());
    print('The value in data variable is $data');
    if(response.statusCode == 200){
     return ProductsModel.fromJson(data);
    }else{
      print('Some thing went wrong');
      return ProductsModel.fromJson(data);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api practic'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<ProductsModel>(
                future: getProducts(),
                builder: (context,AsyncSnapshot<ProductsModel> snapshots){
                  if(snapshots.hasData){
                    return ListView.builder(
                        itemCount: snapshots.data!.data!.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [

                              Card(
                                child: Text(snapshots.data!.data![index].description.toString()),
                              )
                              // Container(
                              //   height: MediaQuery.of(context).size.height *.3,
                              //   width: MediaQuery.of(context).size.width*.1,
                              //   child: ListView.builder(
                              //       itemCount: snapshots.data!.data![index].products![index].images!.length,
                              //       itemBuilder: (context,position){
                              //         return Container(
                              //           height: MediaQuery.of(context).size.height*.25,
                              //           width:  MediaQuery.of(context).size.width*.5,
                              //           decoration: BoxDecoration(
                              //             image: DecorationImage(
                              //               image: NetworkImage('${snapshots.data!.data![index].products![index].images![position].url}',scale: 0.5)
                              //             )
                              //           ),
                              //         );
                              //       }),
                              // )

                            ],
                          ) ;
                        });
                  }else{
                    return Text('Loading');
                  }
                }
            ),
          )
        ],
      ),
    );
  }
}
