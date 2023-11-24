import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:verification_42/Components/StatisticsCard/StatisticsCard.dart';
import 'package:verification_42/controller/Verification42Controller/Verification42Controller.dart';
import 'package:verification_42/model/Verification42/Verification42Model.dart';

class Verification42 extends StatelessWidget {
  Verification42({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
          color: Color(0xffF2F9FF),
          height: 198.h,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30.w, 16.h, 30.w, 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Statistics |",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  color: Color(0xff747474),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " This Month",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        color: Color(0xff747474),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.sp))
                              ]),
                        ),
                      ],
                    ),
                    PopupMenuButton(
                      itemBuilder: (
                        BuildContext context,
                      ) =>
                          [
                        PopupMenuItem(
                          value: "Monthly Order Value",
                          child: Obx(
                            () => CheckboxListTile(
                              title: Text(
                                "Monthly Order Value",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    color: const Color(0xff747474),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              ),
                              value: verificationController.first.value,
                              onChanged: (bool? value) {
                                verificationController
                                    .updateFirstCheckbox(value!);
                                // verificationController.updateFilteredData();

                                print(verificationController.first.value);
                                print(verificationController.filteredResults);
                              },
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: "Number of Orders",
                          child: Obx(
                            () => CheckboxListTile(
                              title: Text(
                                "Number of Orders",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    color: const Color(0xff747474),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              ),
                              value: verificationController.second.value,
                              onChanged: (bool? value) {
                                verificationController
                                    .updateSecondCheckBox(value!);
                                // verificationController.updateFilteredData();

                                print(verificationController.second.value);
                                print(verificationController.filteredResults);
                              },
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: "Working Days",
                          child: Obx(
                            () => CheckboxListTile(
                              title: Text(
                                "Working Days",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    color: const Color(0xff747474),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              ),
                              value: verificationController.third.value,
                              onChanged: (bool? value) {
                                verificationController
                                    .updateThirdCheckBox(value!);
                                // verificationController.updateFilteredData();

                                print(verificationController.third.value);
                                print(verificationController.filteredResults);
                              },
                            ),
                          ),
                        ),
                      ],
                      onSelected: (String newValue) {
                        //  ListView.separated(
                        //   padding: EdgeInsets.only(
                        //     left: 30.w,
                        //     right: 30.w,
                        //   ),
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: verificationController
                        //       .verification42Card.length,
                        //   itemBuilder: (context, index) {
                        //     return buildCard(
                        //         verification42Card: verificationController
                        //             .verification42Card[index]);
                        //   },
                        //   separatorBuilder: (context, index) => SizedBox(
                        //     width: 20.w,
                        //   ),
                        // );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/vector/filter.svg',
                          ),
                          Text(
                            "Filter",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Inter",
                                color: Color(0xff747474),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              verificationController.filteredResults.isEmpty
                  ? Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            verificationController.verification42Card.length,
                        // verificationController.filteredResults.length,

                        itemBuilder: (context, index) {
                          return buildCard(
                              verification42Card: verificationController
                                  .verification42Card[index]);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20.w,
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount:
                        
                        verificationController.filteredResults.length,

                        itemBuilder: (context, index) {
                          return buildCard(
                              verification42Card: verificationController
                                  .verification42Card[index]);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20.w,
                        ),
                      ),
                    )
            ],
          ),
        )));
  }
}
