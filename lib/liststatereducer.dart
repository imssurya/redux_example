import 'package:flutter/cupertino.dart';
import 'package:redux_example/liststateaction.dart';
import 'package:redux_example/liststatemodel.dart';

ListState reducer(ListState state, action) {
  if (action is AddAction) {
    return ListState(
        items: []
          ..addAll(state.items)
          ..add(action.input));
  }
  return ListState(items: state.items);
}
