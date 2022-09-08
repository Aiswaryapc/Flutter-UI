import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:slidable_button/slidable_button.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:uitask/constants/colors.dart';
class TogglePage extends StatefulWidget {
  const TogglePage({Key? key}) : super(key: key);

  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  @override
  Widget build(BuildContext context) {
    Color color1=AppColors.purple.withOpacity(0.35);bool pressed=false;
    Color color2=AppColors.purple;
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Domestic Offers',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,color: color1),),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:2.h),
          child: ToggleSwitch(
            minWidth: 3.h,minHeight: 3.h,
            cornerRadius: 20.0,dividerColor:AppColors.white ,
            activeBgColors: [[AppColors.white],[AppColors.white]],
            activeFgColor: Colors.white,
            inactiveBgColor: AppColors.purple,
            inactiveFgColor: Colors.white,
            initialLabelIndex: 1,
            totalSwitches: 2,
            radiusStyle: true,
            onToggle: (index) {
             //  setState((){
             // pressed=!pressed;});
             print(pressed);
            },
          ),
        ),
        Text('International Offers',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,color:(pressed==false) ? color2: color1),)
      ],
    );
  }
}