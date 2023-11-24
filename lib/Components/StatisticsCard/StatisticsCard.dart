import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:verification_42/controller/Verification42Controller/Verification42Controller.dart';
import 'package:verification_42/model/Verification42/Verification42Model.dart';

Verification42Controller verificationController =
    Get.put(Verification42Controller());


buildCard({
  required Verification42Model verification42Card,
}) {

    if (verificationController.filteredResults
        .contains(verificationController.verification42Card[0].text2)) {
      return Card(
        child: Container(
          height: 133.h,
          width: 114.w,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color(0xff000000).withOpacity(0.15),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (verification42Card.loadingbar == false)
                Text.rich(
                  TextSpan(
                      text: verification42Card.text1.toString(),
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: const Color(0xff004C99)),
                      children: <TextSpan>[
                        TextSpan(
                            text: verification42Card.numericValue.toString(),
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 22.62.sp,
                                color: const Color(0xff004C99))),
                      ]),
                  textAlign: TextAlign.center,
                ),
              if (verification42Card.loadingbar == true)
                SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: CircularPercentIndicator(
                    radius: 30.r,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 5.w,
                    percent: 0.4,
                    center: Text.rich(
                      TextSpan(
                          text: verification42Card.obtained,
                          style: TextStyle(
                            color: const Color(0xff004C99),
                            fontSize: 12.sp,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: verification42Card.total,
                                style: TextStyle(
                                  color: Color(0xff747474),
                                  fontSize: 12.sp,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
                                ))
                          ]),
                      textAlign: TextAlign.center,
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Color(0Xff004C99),
                    progressColor: Color(0XFFF2F2F2),
                  ),
                ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                verification42Card.text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    fontSize: 12.sp,
                    color: const Color(0xff747474)),
              ),
            ],
          ),
        ),
      );
    }
    if (verificationController.filteredResults
        .contains(verificationController.verification42Card[1].text2)) {
      return Card(
        child: Container(
          height: 133.h,
          width: 114.w,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color(0xff000000).withOpacity(0.15),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (verification42Card.loadingbar == false)
                Text.rich(
                  TextSpan(
                      text: verification42Card.text1,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: const Color(0xff004C99)),
                      children: <TextSpan>[
                        TextSpan(
                            text: verification42Card.numericValue,
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 22.62.sp,
                                color: const Color(0xff004C99))),
                      ]),
                  textAlign: TextAlign.center,
                ),
              if (verification42Card.loadingbar == true)
                SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: CircularPercentIndicator(
                    radius: 30.r,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 5.w,
                    percent: 0.4,
                    center: Text.rich(
                      TextSpan(
                          text: verification42Card.obtained,
                          style: TextStyle(
                            color: const Color(0xff004C99),
                            fontSize: 12.sp,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: verification42Card.total,
                                style: TextStyle(
                                  color: Color(0xff747474),
                                  fontSize: 12.sp,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
                                ))
                          ]),
                      textAlign: TextAlign.center,
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Color(0Xff004C99),
                    progressColor: Color(0XFFF2F2F2),
                  ),
                ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                verification42Card.text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    fontSize: 12.sp,
                    color: const Color(0xff747474)),
              ),
            ],
          ),
        ),
      );
    }
    if (verificationController.filteredResults
        .contains(verificationController.verification42Card[2].text2)) {
      return Card(
        child: Container(
          height: 133.h,
          width: 114.w,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color(0xff000000).withOpacity(0.15),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (verification42Card.loadingbar == false)
                Text.rich(
                  TextSpan(
                      text: verification42Card.text1,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: const Color(0xff004C99)),
                      children: <TextSpan>[
                        TextSpan(
                            text: verification42Card.numericValue,
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 22.62.sp,
                                color: const Color(0xff004C99))),
                      ]),
                  textAlign: TextAlign.center,
                ),
              if (verification42Card.loadingbar == true)
                SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: CircularPercentIndicator(
                    radius: 30.r,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 5.w,
                    percent: 0.4,
                    center: Text.rich(
                      TextSpan(
                          text: verification42Card.obtained,
                          style: TextStyle(
                            color: const Color(0xff004C99),
                            fontSize: 12.sp,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: verification42Card.total,
                                style: TextStyle(
                                  color: Color(0xff747474),
                                  fontSize: 12.sp,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
                                ))
                          ]),
                      textAlign: TextAlign.center,
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Color(0Xff004C99),
                    progressColor: Color(0XFFF2F2F2),
                  ),
                ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                verification42Card.text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    fontSize: 12.sp,
                    color: const Color(0xff747474)),
              ),
            ],
          ),
        ),
      );
    } else {
      return Card(
        child: Container(
          height: 133.h,
          width: 114.w,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color(0xff000000).withOpacity(0.15),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (verification42Card.loadingbar == false)
                Text.rich(
                  TextSpan(
                      text: verification42Card.text1,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: const Color(0xff004C99)),
                      children: <TextSpan>[
                        TextSpan(
                            text: verification42Card.numericValue,
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 22.62.sp,
                                color: const Color(0xff004C99))),
                      ]),
                  textAlign: TextAlign.center,
                ),
              if (verification42Card.loadingbar == true)
                SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: CircularPercentIndicator(
                    radius: 30.r,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 5.w,
                    percent: 0.4,
                    center: Text.rich(
                      TextSpan(
                          text: verification42Card.obtained,
                          style: TextStyle(
                            color: const Color(0xff004C99),
                            fontSize: 12.sp,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: verification42Card.total,
                                style: TextStyle(
                                  color: Color(0xff747474),
                                  fontSize: 12.sp,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
                                ))
                          ]),
                      textAlign: TextAlign.center,
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Color(0Xff004C99),
                    progressColor: Color(0XFFF2F2F2),
                  ),
                ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                verification42Card.text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    fontSize: 12.sp,
                    color: const Color(0xff747474)),
              ),
            ],
          ),
        ),
      );
    }

}