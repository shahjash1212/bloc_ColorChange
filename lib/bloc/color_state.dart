part of 'color_bloc.dart';

class ColorState {
  Color colorValue;

  ColorState({
    required this.colorValue,
  });

  ColorState copyWith(Color colorValue) {
    return ColorState(colorValue: colorValue);
  }
}
