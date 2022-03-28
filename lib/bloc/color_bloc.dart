import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState(colorValue: Colors.black)) {
    on<ColorChangeEvent>((event, emit) {
      emit(state.copyWith(state.colorValue = Colors.blue));
    });
    on<ColorChangeEvent2>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(state.colorValue = Colors.red));
    });
    on<ColorBackEvent>((event, emit) {
      emit(state.copyWith(state.colorValue = Colors.black));
    });
  }
}
