import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class FavouriteProvider extends ChangeNotifier{
  List<int> _selectedIndex = [];
  List<int> get selectedIndex => _selectedIndex;

  void upDateIndex(int value){
    selectedIndex.add(value);
    notifyListeners();
  }

  void remvoeIndex(int value){
    selectedIndex.remove(value);
    notifyListeners();
  }
}