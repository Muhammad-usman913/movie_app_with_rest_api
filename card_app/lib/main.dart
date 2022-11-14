import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter card app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildChildern(),
        )
      ),
    );
  }
final style = TextStyle(fontFamily: 'Pacifico',fontSize: 40.0, color: Colors.white,fontWeight: FontWeight.bold);
 Widget _buildChildern() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/avator.jpg'),
          ),
          Text('Angela Yu',style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold
          )),
          Text('Flutter Developer' ,style: TextStyle(
           fontFamily: 'Source Sans Pro',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            width: 150,
              height: 20,
              child: Divider(color: Colors.white,),),
          Card(
            child: ListTile(
              leading: Icon(Icons.phone,color: Colors.teal,),
              title: Text('+923030405353',style: TextStyle(color: Colors.teal),),
            ),
          ),
          SizedBox(height: 8.0,),
          Card(
            child: ListTile(
              leading: Icon(Icons.message,color: Colors.teal,),
              title: Text('test@test.com',style: TextStyle(color: Colors.teal),),
            ),
          ),
        ],
      ),
    );
  }
}

