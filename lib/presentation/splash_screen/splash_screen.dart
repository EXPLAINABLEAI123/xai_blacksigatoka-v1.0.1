import 'package:flutter/material.dart';
import 'package:xai_blacksigatoka/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightGreen900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 204,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgXaidetectionblack,
                height: getVerticalSize(
                  423,
                ),
                width: getHorizontalSize(
                  393,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
              // Center(
              //   child: Text(
              //     'Welcome to XAI Black Sigatoka Detection',
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 70,
              ),
              // Center(
              //   child: Text(
              //     'Our app uses advanced machine learning algorithms to detect black sigatoka disease in banana crops. Start using the app now to protect your crops and increase yield.',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontSize: 16,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:xai_blacksigatoka/core/app_export.dart';

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.lightGreen900,
//         body: Container(
//           width: double.maxFinite,
//           padding: getPadding(
//             top: 204,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgXaidetectionblack,
//                 height: getVerticalSize(
//                   423,
//                 ),
//                 width: getHorizontalSize(
//                   393,
//                 ),
//                 margin: getMargin(
//                   bottom: 5,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
