import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:slidable_button/slidable_button.dart';
import 'package:uitask/constants/colors.dart';
class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    int result=1;
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Domestic Offers',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,color: AppColors.purple.withOpacity( 0.35)),),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:2.h),
          child: HorizontalSlidableButton(
            width: 6.h,height: 3.h,
            buttonWidth: 3.h,
            color: AppColors.purple,
            buttonColor: AppColors.white,
            dismissible: false,

            onChanged: (position) {
              setState(() {
                if (position == SlidableButtonPosition.end) {
                  result = 1;
                } else {
                  result = 2;
                }
              });
            },
          ),
        ),
        Text('International Offers',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,color: AppColors.purple),)
      ],
    );
  }
}