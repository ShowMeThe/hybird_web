
import 'dart:collection';
import 'ViewModel.dart';

class ViewModelStore{

  var _map = HashMap<String,ViewModel>();


  void put(String key,ViewModel viewModel){
      _map[key] = viewModel;
  }

  ViewModel get(String key){
    return _map[key];
  }

  void clear(String key){
    _map.remove(key);
  }

}