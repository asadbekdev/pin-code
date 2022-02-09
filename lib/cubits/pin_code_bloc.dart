import 'package:flutter_bloc/flutter_bloc.dart';

class PinFieldCubit extends Cubit<int> {
  int pinFieldIndex = 0;
  PinFieldCubit() : super(0);

  void pinIndexIncrement() {
    if (pinFieldIndex < 5) {
      pinFieldIndex += 1;
      emit(pinFieldIndex);
    }
  }

  void pinIndexDecrement() {
    if (pinFieldIndex > 0) {
      pinFieldIndex -= 1;
      emit(pinFieldIndex - 1);
    }
  }
}
