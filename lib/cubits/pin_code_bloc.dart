import 'package:flutter_bloc/flutter_bloc.dart';

class PinFieldCubit extends Cubit<int> {
  int? pinFieldIndex;
  PinFieldCubit() : super(0);

  void pinIndexIncrement() => emit(state + 1);
  void pinIndexDecrement() => emit(state - 1);
}
