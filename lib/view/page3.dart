import 'package:bloc_colorchange/view/page1.dart';
import 'package:bloc_colorchange/view/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/color_bloc.dart';
import '../widget/widget.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 10,
            backgroundColor: state.colorValue,
            title: Text('Colors - 3'),
          ),
          backgroundColor: state.colorValue,
          body: Center(
            child: MyButton(
              onPressedButton: () {
                BlocProvider.of<ColorBloc>(context).add(ColorChangeEvent());
              },
              boxtext: 'Change',
            ),
          ),
          floatingActionButton: MyButton(
            onPressedButton: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Page1()));
            },
            boxtext: "Change-Page",
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
