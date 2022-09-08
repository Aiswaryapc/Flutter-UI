import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/constants/colors.dart';

class CheckedBoxPage extends StatefulWidget {
  const CheckedBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckedBoxPage> createState() => _CheckedBoxPageState();
}

class _CheckedBoxPageState extends State<CheckedBoxPage> {
  @override
  bool _value1 = false;
  bool _value2 = false;bool _value6 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;


  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: AppColors.gold),
          ),
          SizedBox(
            height: 1.h,
          ),
         check1(),
          check2(),
          check3(),
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
              'Hospitality',
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
              'Food & Beverages',
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
  Widget check2() {
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
                value: _value3,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (bool? value) {
                  setState(() {
                    _value3 = value!;
                  });
                },
              ),
            ),
            Text(
              'Health',
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
                value: _value4,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (bool? value) {
                  setState(() {
                    _value4 = value!;
                  });
                },
              ),
            ),
            Text(
              'Retail',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: AppColors.purple),
            ),
            SizedBox(width: 9.h,)
          ],
        ),
      ],
    );
  }
  Widget check3() {
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
                value: _value5,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (bool? value) {
                  setState(() {
                    _value5 = value!;
                  });
                },
              ),
            ),
            Text(
              'Entertainment',
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
                value: _value6,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (bool? value) {
                  setState(() {
                    _value6 = value!;
                  });
                },
              ),
            ),
            Text(
              'Transportation',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: AppColors.purple),
            ),
            SizedBox(width: 2.h,)
          ],
        ),
      ],
    );
  }
}
