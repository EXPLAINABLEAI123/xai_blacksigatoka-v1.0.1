import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:xai_blacksigatoka/core/app_export.dart';
import 'package:xai_blacksigatoka/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: ColorConstant.green500,
                height: getVerticalSize(
                  160,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: getPadding(
                          left: 27,
                          top: 52,
                          right: 27,
                          bottom: 52,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup3,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPwremovebgpreview,
                          height: getSize(
                            46,
                          ),
                          width: getSize(
                            46,
                          ),
                          margin: getMargin(
                            top: 3,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMenuiconwhite,
                      height: getVerticalSize(
                        56,
                      ),
                      width: getHorizontalSize(
                        108,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(
                        bottom: 47,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle14,
                      height: getVerticalSize(
                        122,
                      ),
                      width: getHorizontalSize(
                        395,
                      ),
                      alignment: Alignment.bottomCenter,
                      margin: getMargin(
                        bottom: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  231,
                ),
                margin: getMargin(
                  top: 55,
                ),
                child: Text(
                  "Welcome To\nBlack Sigatoka Detection!",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterBold32Gray900,
                ),
              ),
              Container(
                height: getVerticalSize(
                  400,
                ),
                width: getHorizontalSize(
                  382,
                ),
                margin: getMargin(
                  top: 20,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: getHorizontalSize(
                          299,
                        ),
                        child: Text(
                          "Take a good quality photo of the banana leaf, ensuring adequate lighting, and focus",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtInterMedium25,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTakepicremovebgpreview,
                      height: getVerticalSize(
                        225,
                      ),
                      width: getHorizontalSize(
                        382,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
              CustomButton(
                onTap: () {
                  onTapStack322131(context);
                },
                height: getVerticalSize(
                  59,
                ),
                width: getHorizontalSize(
                  253,
                ),
                text: "Scan Now!",
                margin: getMargin(
                  top: 50,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapStack322131(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.home);
  }
}
