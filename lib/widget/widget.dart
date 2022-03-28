import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/color_bloc.dart';

class MyButton extends StatefulWidget {
  MyButton({
    Key? key,
    required this.onPressedButton,
    required this.boxtext,
  }) : super(key: key);

  Function onPressedButton;
  final String boxtext;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          onPressed: () {
            widget.onPressedButton();
          },
          child: Text(
            widget.boxtext,
            style: TextStyle(color: state.colorValue),
          ),
        );
      },
    );
  }
}
