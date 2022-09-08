import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/constants/colors.dart';
class CheckBox2 extends StatefulWidget {
  const CheckBox2({Key? key}) : super(key: key);

  @override
  State<CheckBox2> createState() => _CheckBox2State();
}

class _CheckBox2State extends State<CheckBox2> {
  bool _value1 = false;
  bool _value2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Sort by',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: AppColors.gold),
          ),
          SizedBox(
            height: 1.h,
          ),
          check1(),

        ],
      ),
    );
  }


Widget check1() {

  return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              autofocus: false,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              activeColor: AppColors.purple,
              checkColor: Colors.white,
              value: _value1,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (bool? value) {
                setState(() {
                  _value1 = value!;
                });
              },
            ),
          ),
          Text(
            'Popularity',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.purple),
          ),
        ],
      ),
      Row(
        children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              autofocus: false,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              activeColor: AppColors.purple,
              checkColor: Colors.white,
              value: _value2,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (bool? value) {
                setState(() {
                  _value2 = value!;
                });
              },
            ),
          ),
          Text(
            'Latest Offers',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.purple),
          ),
        ],
      ),
    ],
  );
}

}
