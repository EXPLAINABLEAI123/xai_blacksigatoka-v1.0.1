import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xai_blacksigatoka/core/utils/color_constant.dart';
import 'package:xai_blacksigatoka/core/utils/image_constant.dart';
import 'package:xai_blacksigatoka/core/utils/size_utils.dart';
import 'package:xai_blacksigatoka/routes/app_routes.dart';
import 'package:xai_blacksigatoka/widgets/custom_image_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'xai_blacksigatoka',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: AppRoutes.routes,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacementNamed(AppRoutes.scrOneScreen);
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:xai_blacksigatoka/presentation/splash_screen/splash_screen.dart';
// import 'package:xai_blacksigatoka/routes/app_routes.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         visualDensity: VisualDensity.standard,
//       ),
//       title: 'xai_blacksigatoka',
//       debugShowCheckedModeBanner: false,
//       home: Builder(
//         builder: (context) => FutureBuilder(
//           future: Future.delayed(Duration(seconds: 2)),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return SplashScreen();
//             } else {
//               return Navigator.of(context)
//                   .pushReplacementNamed(AppRoutes.scrOneScreen);
//             }
//           },
//         ),
//       ),
//       routes: AppRoutes.routes,
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:xai_blacksigatoka/routes/app_routes.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         visualDensity: VisualDensity.standard,
//       ),
//       title: 'xai_blacksigatoka',
//       debugShowCheckedModeBanner: false,
//       initialRoute: AppRoutes.splashScreen,
//       routes: AppRoutes.routes,
//     );
//   }
// }
