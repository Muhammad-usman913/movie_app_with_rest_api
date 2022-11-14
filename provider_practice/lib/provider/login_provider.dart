
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class LoginProvider extends ChangeNotifier{

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  setLoading(bool value){
    _isLoading = value;
    notifyListeners();
  }


  void login(String email,String password)async{
    setLoading(true);
    try{
      final response = await http.post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email' : email,
            'password' : password
          }
      );
      if(response.statusCode == 200){
        print('Successful');
        setLoading(false);
      }else{
        setLoading(false);
        print('failed');
      }
    }catch(e){
      setLoading(false);
      print(e.toString());
    }

  }

}