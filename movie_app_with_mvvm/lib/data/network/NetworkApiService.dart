
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:movie_app_with_mvvm/data/app_exceptions.dart';
import 'package:movie_app_with_mvvm/data/network/BaseApiServices.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app_with_mvvm/models/item_model.dart';

class NetworkApiService implements BaseApiServices{
  @override
  Future getGetApiResponse(String url) async{
    dynamic responseJson;

    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
      ItemModel.fromJson(responseJson);
    }on SocketException{
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, data) async{
    dynamic responseJson;
    try{
      final response = await post(
        Uri.parse(url),
        body: data
      ).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw FetchDataException('No internet connection');
    }
   return responseJson;
  }

 dynamic returnResponse(http.Response response) {
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.statusCode.toString());
      case 404:
        throw UnauthorizedException(response.statusCode.toString());
      default:
        throw FetchDataException('Error occured while communication with services'+
            'with status code'+response.statusCode.toString()
        );
    }
  }

}