// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBloc>(
      create: (context) => ColorBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          backgroundColor: state.colorValue,
          body: Center(
              child: RaisedButton(
            onPressed: () {
              if (state.colorValue == Colors.black) {
                BlocProvider.of<ColorBloc>(context).add(ColorChangeEvent());
              } else {
                if (state.colorValue == Colors.blue) {
                  BlocProvider.of<ColorBloc>(context).add(ColorChangeEvent2());
                } else {
                  BlocProvider.of<ColorBloc>(context).add(ColorBackEvent());
                }
              }
            },
            child: Text('Chnage'),
          )),
        );
      },
    );
  }
}
