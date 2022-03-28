import 'package:bloc_colorchange/view/page2.dart';
import 'package:bloc_colorchange/view/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/color_bloc.dart';
import '../widget/widget.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 10,
            backgroundColor: state.colorValue,
            title: Text('Colors - 2'),
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page3()));
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
