import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_example/homepage.dart';
import 'package:redux_example/liststatemodel.dart';
import 'package:redux_example/liststatereducer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store =
      Store<ListState>(reducer, initialState: ListState.initialState());
  @override
  Widget build(BuildContext context) {
    return StoreProvider<ListState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: 'Redux list app',
        home: Home(),
      ),
    );
  }
}

//redux
// store - holds state object represents state for entire application every single
// time user commits an event then that event manipulate the state
// action - event is called an action this action get dispatched to reducer function
// reducer - reducer actually update the state which then present new state to the view
