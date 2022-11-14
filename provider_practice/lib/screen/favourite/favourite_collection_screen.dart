import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';
class FavouriteCollectionScreen extends StatelessWidget {
  const FavouriteCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Collection'),
      ),
      body: Consumer<FavouriteProvider>(
        builder: (context,snapshot,child){
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                     itemCount: snapshot.selectedIndex.length,
                    itemBuilder: (context,index){
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
