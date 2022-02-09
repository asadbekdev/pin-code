import 'package:flutter_test/flutter_test.dart';
import 'package:pin_code/cubits/pin_code_bloc.dart';

void main() {
  group('PinField testing', () {
    test("PinFieldIndex increment test", () {
      // STEP 1
      PinFieldCubit pinFieldCubit = PinFieldCubit();
      int pinFieldIndex = pinFieldCubit.state;

      // STEP 2
      pinFieldCubit.pinIndexIncrement();
      int result = pinFieldCubit.state;

      // STEP 3
      expect(result, pinFieldIndex + 1);
    });
    test("PinFieldIndex decrement test", () {
      // STEP 1
      PinFieldCubit pinFieldCubit = PinFieldCubit();
      int pinFieldIndex = pinFieldCubit.state;

      // STEP 2
      pinFieldCubit.pinIndexIncrement();
      pinFieldCubit.pinIndexDecrement();
      int result = pinFieldCubit.state;

      // STEP 3
      expect(result, pinFieldIndex - 1);
    });
  });
}
