import 'package:flutter/material.dart';
import 'package:xai_blacksigatoka/core/app_export.dart';
import 'package:xai_blacksigatoka/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.lightGreen900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 60, bottom: 60),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(460),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(419),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgXaidetectionblack419x430,
                                                  height: getVerticalSize(419),
                                                  width: getHorizontalSize(430),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          bottom: 39),
                                                      child: Text(
                                                          "You’re Welcome",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold32)))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: getHorizontalSize(300),
                                        child: Text(
                                            "Lets Create a Black Sigatoka free Environment.",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterMedium22)))
                              ])),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(74),
                          text: "I’m new here...",
                          margin: getMargin(left: 24, right: 24),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder37,
                          padding: ButtonPadding.PaddingAll23,
                          fontStyle: ButtonFontStyle.InterBold22Black900,
                          onTap: () {
                            onTapImnewhere(context);
                          }),
                      Padding(
                          padding: getPadding(top: 60, bottom: 52),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Already have an account? ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(22),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "Sign in",
                                    style: TextStyle(
                                        color: ColorConstant.redA700Bf,
                                        fontSize: getFontSize(22),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTapImnewhere(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
