import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState(colorValue: Colors.blueAccent)) {
    on<ColorChangeEvent>((event, emit) {
      if (state.colorValue == Colors.blueAccent) {
        emit(state.copyWith(state.colorValue = Colors.redAccent));
      } else {
        emit(state.copyWith(state.colorValue = Colors.blueAccent));
      }
    });
  }
}
