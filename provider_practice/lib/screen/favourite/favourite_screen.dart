import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/model/favourit_icon.dart';
import 'package:provider_practice/provider/favourite_provider.dart';

import 'favourite_collection_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteCollectionScreen()));

          }, icon: Icon(Icons.add))
        ],
      ),
      body: Consumer<FavouriteProvider>(
        builder: (context,snapshot,child){
          return Column(
            children: [
              Expanded(
                child: ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      if(snapshot.selectedIndex.contains(index)){
                        snapshot.remvoeIndex(index);
                      }else{
                        snapshot.upDateIndex(index);
                      }
                    },
                    leading: Text('item $index'),
                    trailing: Icon(snapshot.selectedIndex.contains(index) ?  Icons.favorite : Icons.favorite_border_outlined),
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
