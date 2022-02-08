import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code/cubits/pin_code_bloc.dart';
import 'package:pin_code/resources/assets_manager.dart';

class PinCodeScreen extends StatelessWidget {
  PinCodeScreen({Key? key}) : super(key: key);

  final pinFieldCubit = PinFieldCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(ImageAssets.faqsIc, height: 24.w),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 56.h,
      ),
      body: BlocBuilder<PinFieldCubit, int>(
          bloc: pinFieldCubit,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 48.h),
                Text(
                  "Please enter PIN code",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.87),
                  ),
                ),
                SizedBox(height: 60.h),

                // PIN CODE SECTION
                SizedBox(
                  width: 184.w,
                  height: 28.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 28.w,
                        height: 28.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.12),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 24.w);
                    },
                  ),
                ),
                const Spacer(),

                // KEYBOARD SECTION
                SizedBox(
                  height: 180.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 60.h,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: 120.w,
                          height: 60.h,
                          alignment: Alignment.center,
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                              fontSize: 34.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 120.w,
                        height: 60.h,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(ImageAssets.fingerprintIc,
                            height: 27.w),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 120.w,
                        height: 60.h,
                        alignment: Alignment.center,
                        child: Text(
                          "0",
                          style: TextStyle(
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 120.w,
                        height: 60.h,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(ImageAssets.backspaceIc,
                            height: 27.w),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28.h),
              ],
            );
          }),
    );
  }
}
