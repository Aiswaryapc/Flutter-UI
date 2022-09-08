import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/constants/colors.dart';

class SlidingPage extends StatefulWidget {
  const SlidingPage({Key? key}) : super(key: key);

  @override
  State<SlidingPage> createState() => _SlidingPageState();
}

class _SlidingPageState extends State<SlidingPage> {
  @override
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels('1', "100");
  int divisions = 5;
  double _startValue = 20.0;
  double _endValue = 90.0;
  List strLabels = [];

  @override
  void initState() {
    super.initState();

    strLabels = [
      for (var i = 0; i <= values.end; i += (values.end ~/ divisions)) i
    ];
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          min: 0.0,
          max: 100.0,
          activeColor: AppColors.purple,
          inactiveColor: AppColors.gold,
          values: values,
          labels: labels,
          onChanged: (value) {
            print("START: ${value.start}, End: ${value.end}");

            setState(() {
              values = value;
              labels = RangeLabels("${value.start.toInt().toString()}\$",
                  "${value.start.toInt().toString()}\$");
            });
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              SizedBox(width: 2.h),
            Text("${values.start.toInt().toString()}\%",style: TextStyle(color: AppColors.purple
              ),),
              Text("${values.end.toInt().toString()}\%",style: TextStyle(color: AppColors.purple
              ),),SizedBox(width: 2.h),
          ]
          ),
        ),
      ],
    );
  }
}
