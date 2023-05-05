import 'package:flutter/material.dart';
import 'package:xai_blacksigatoka/core/app_export.dart';

class ScrOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.lightGreen900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 39, top: 54, right: 39, bottom: 54),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 130),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: getVerticalSize(14),
                                        width: getHorizontalSize(50),
                                        margin: getMargin(top: 8, bottom: 2),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(7)))),
                                    Container(
                                        height: getVerticalSize(14),
                                        width: getHorizontalSize(30),
                                        margin: getMargin(
                                            left: 11, top: 8, bottom: 2),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA7004c,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(7)))),
                                    Spacer(),
                                    Text("Skip",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold20)
                                  ]))),
                      Container(
                          width: getHorizontalSize(231),
                          margin: getMargin(top: 118),
                          child: Text("Welcome\nTo\nBlack Sigatoka Detection!",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterBold32)),
                      Container(
                          width: getHorizontalSize(337),
                          margin: getMargin(left: 3, top: 111, right: 10),
                          child: Text(
                              "We're excited to help you protect your banana plants from this devastating disease.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterMedium22)),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapStack322131(context);
                          },
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(bottom: 71),
                              color: ColorConstant.whiteA700,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder40),
                              child: Container(
                                  height: getSize(80),
                                  width: getSize(80),
                                  padding: getPadding(
                                      left: 19, top: 27, right: 19, bottom: 27),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder40),
                                  child: Stack(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.img32213126x42,
                                        height: getVerticalSize(26),
                                        width: getHorizontalSize(42),
                                        alignment: Alignment.center)
                                  ]))))
                    ]))));
  }

  onTapStack322131(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scrTwoScreen);
  }
}
