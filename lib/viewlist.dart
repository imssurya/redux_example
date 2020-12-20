import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/liststatemodel.dart';

class ViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<ListState, List<String>>(
      converter: (store) => store.state.items,
      builder: (context, items) => Column(
          children: items
              .map(
                (e) => ListTile(
                  title: Text(e),
                ),
              )
              .toList()),
    );
  }
}
