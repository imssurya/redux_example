import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/liststateaction.dart';
import 'package:redux_example/liststatemodel.dart';
import 'package:redux_example/main.dart';
import 'package:redux_example/viewmodel.dart';

class ListInput extends StatefulWidget {
  @override
  _ListInputState createState() => _ListInputState();
}

class _ListInputState extends State<ListInput> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ListState, ViewModel>(
      converter: (store) => ViewModel(
        addItemToList: (inputText) => store.dispatch(
          AddAction(input: inputText),
        ),
      ),
      builder: (context, viewModel) {
        return TextField(
          controller: controller,
          onSubmitted: (text) {
            viewModel.addItemToList(text);
            controller.text = '';
          },
        );
      },
    );
  }
}
