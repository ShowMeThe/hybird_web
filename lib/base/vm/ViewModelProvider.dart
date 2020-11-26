
import 'package:flutter/widgets.dart';

import 'ViewModel.dart';
import 'ViewModelProviders.dart';

class ViewModelProvider<T extends ViewModel> extends StatefulWidget {

  final T viewModel;
  final Widget body;

  ViewModelProvider({this.viewModel, this.body}){
      ViewModelProviders.add(viewModel);
  }

  @override
  State<StatefulWidget> createState() {
    return ViewModelProviderState();
  }
}

class ViewModelProviderState<T extends ViewModel>
    extends State<ViewModelProvider> {

  var _onInit = false;
  @override
  void initState() {
    super.initState();
    if(!_onInit){
      widget.viewModel.onCreate();
      _onInit = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.viewModel.onCleared();
    ViewModelProviders.clear<T>();
  }

  @override
  Widget build(BuildContext context) {
    return widget.body;
  }

}

