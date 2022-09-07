import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/Widgets/slider.dart';
import 'package:uitask/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,

              end: Alignment.center,
              colors: [AppColors.bglight, AppColors.white])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 6.h,),
                Stack(
                  children : [Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height:6.h,

                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.all(Radius.circular(24))
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search,color: AppColors.purple,size: 4.h,),
                          ),
                          Expanded(child: TextFormField(maxLines: 1,style: TextStyle(color: AppColors.black,fontSize: 15,fontWeight: FontWeight.w700),
                          cursorColor: AppColors.purple, decoration: InputDecoration(
                              fillColor:AppColors.white,
                              filled: true,
                              contentPadding: const EdgeInsets.all(0.0),
                              hintText: "Marriott" ,
                              border: InputBorder.none,

                              hintStyle: TextStyle(color: AppColors.black,fontSize:15,fontWeight: FontWeight.w700),
                            ),)),
                          Expanded(child: Container()),


                        ],
                      ),
                    ),
                  ),
                    Padding(
                      padding:  EdgeInsets.only(left: 43.h,right: 0.0.h,top: 0.2.h),
                      child: ElevatedButton(
                        child: Center(child: Icon(Icons.close,color: AppColors.white,size: 3.5.h,)),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: AppColors.purple,
                          fixedSize: Size(5.1.h, 5.1.h),
                          shape: const CircleBorder(),

                        ),
                      ),
                    ),
               ], ),
SizedBox(height: 3.h,),
                SliderPage(),

              ],
            ),
          )),
    );
  }
}
