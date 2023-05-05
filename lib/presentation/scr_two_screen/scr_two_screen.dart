import 'package:flutter/material.dart';
import 'package:xai_blacksigatoka/core/app_export.dart';

class ScrTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.lightGreen900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 54, right: 24, bottom: 54),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 159, right: 15),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: getVerticalSize(14),
                                        width: getHorizontalSize(30),
                                        margin: getMargin(top: 8, bottom: 2),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA7004c,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(7)))),
                                    Container(
                                        height: getVerticalSize(14),
                                        width: getHorizontalSize(50),
                                        margin: getMargin(
                                            left: 11, top: 8, bottom: 2),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(7)))),
                                    Spacer(),
                                    Text("Skip",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold20)
                                  ]))),
                      Padding(
                          padding: getPadding(top: 88),
                          child: Text("To get started",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLeaves2359221,
                          height: getVerticalSize(323),
                          width: getHorizontalSize(382),
                          margin: getMargin(top: 5)),
                      Container(
                          width: getHorizontalSize(323),
                          margin: getMargin(left: 32, top: 26, right: 27),
                          child: Text(
                              "Simply take a picture of a banana leaf and send it to our model. We'll analyze the image and provide you with a diagnosis within seconds.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterMedium22)),
                      Padding(
                          padding: getPadding(top: 26, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapStack322131(context);
                                    },
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder40),
                                        child: Container(
                                            height: getSize(80),
                                            width: getSize(80),
                                            padding: getPadding(
                                                left: 19,
                                                top: 27,
                                                right: 19,
                                                bottom: 27),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder40),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img322131,
                                                  height: getVerticalSize(26),
                                                  width: getHorizontalSize(42),
                                                  alignment: Alignment.center)
                                            ])))),
                                GestureDetector(
                                    onTap: () {
                                      onTapStack322131one(context);
                                    },
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 14),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder40),
                                        child: Container(
                                            height: getSize(80),
                                            width: getSize(80),
                                            padding: getPadding(
                                                left: 19,
                                                top: 27,
                                                right: 19,
                                                bottom: 27),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder40),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img32213126x42,
                                                  height: getVerticalSize(26),
                                                  width: getHorizontalSize(42),
                                                  alignment: Alignment.center)
                                            ]))))
                              ]))
                    ]))));
  }

  onTapStack322131(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scrOneScreen);
  }

  onTapStack322131one(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
  }
}
