

import 'ViewModel.dart';
import 'ViewModelStore.dart';

class ViewModelProviders {
  static ViewModelProviders _instant;

  static ViewModelProviders get() {
    if (_instant == null) {
      _instant = ViewModelProviders();
    }
    return _instant;
  }

  static const _defaultKey = "ViewModelProviders";
  ViewModelStore _store = ViewModelStore();

  static T create<T extends ViewModel>() {
    var instant = get();
    var clazzName = T.toString();
    var t = instant._store.get(_defaultKey + clazzName);
    return t;
  }

  static add<T extends ViewModel>(T t) {
    var instant = get();
    var clazzName = T.toString();
    instant._store.put(_defaultKey + clazzName, t);
  }

  static clear<T extends ViewModel>() {
    var instant = get();
    var clazzName = T.toString();
    instant._store.clear(_defaultKey + clazzName);
  }
}
