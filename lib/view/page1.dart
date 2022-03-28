import 'package:bloc_colorchange/view/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/color_bloc.dart';
import '../widget/widget.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 10,
            backgroundColor: state.colorValue,
            title: Text('Colors - 1'),
          ),
          
          backgroundColor: state.colorValue,
          body: Center(
            child: MyButton(
              onPressedButton: () {
                print('99999999999999999999999');
                BlocProvider.of<ColorBloc>(context).add(ColorChangeEvent());
              },
              boxtext: 'Change',
            ),
          ),
          floatingActionButton: MyButton(
            onPressedButton: () {
              Navigator.push(
             
                  context, MaterialPageRoute(builder: (context) => Page2()));
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
