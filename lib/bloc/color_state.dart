part of 'color_bloc.dart';

class ColorState {
  var colorValue;

  ColorState({
    required this.colorValue,
  });

  ColorState copyWith(var colorValue) {
    return ColorState(colorValue: colorValue);
  }
}
