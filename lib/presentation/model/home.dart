// ignore_for_file: library_private_types_in_public_api

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xai_blacksigatoka/core/utils/color_constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;
  late File _image;
  late List _output;
  final picker = ImagePicker(); //allows us to pick image from gallery or camera

  @override
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //dis function disposes and clears our memory
    super.dispose();
    Tflite.close();
  }

  classifyImage(File image) async {
    //this function runs the model on the image
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults:
          4, //the amout of categories our neural network can predict (here no. of diseases)
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _output = output!;
      _loading = false;
    });
  }

  loadModel() async {
    //this function loads our model
    await Tflite.loadModel(
      model: 'assets/model/model.tflite',
      labels: 'assets/model/labels.txt',
    );
  }

  pickImage() async {
    //this function to grab the image from camera
    var image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  pickGalleryImage() async {
    //this function to grab the image from gallery
    var image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.green500,
        centerTitle: true,
        title: Text(
          'Black Sigatoka Classification',
          style: TextStyle(
            color: ColorConstant.whiteA700,
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
      ),
      body: Container(
        color: ColorConstant.whiteA700,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: _loading == true
                  ? null //show nothing if no picture selected
                  : Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.file(
                              _image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Divider(
                          height: 25,
                          thickness: 1,
                        ),
                        // ignore: unnecessary_null_comparison
                        _output != null
                            ? Text(
                                'This leaf an: ${_output[0]['label']}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            : Container(),
                        const Divider(
                          height: 25,
                          thickness: 1,
                        ),
                      ],
                    ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: pickImage,
              child: Container(
                width: MediaQuery.of(context).size.width - 200,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                decoration: BoxDecoration(
                  color: ColorConstant.green500,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Take A Photo',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: pickGalleryImage,
              child: Container(
                width: MediaQuery.of(context).size.width - 200,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                decoration: BoxDecoration(
                  color: ColorConstant.green500,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Pick From Gallery',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: ColorConstant.green500,
  //       centerTitle: true,
  //       title: Text(
  //         'Black Sigatoka Classification',
  //         style: TextStyle(
  //           color: ColorConstant.whiteA700,
  //           fontWeight: FontWeight.w500,
  //           fontSize: 23,
  //         ),
  //       ),
  //     ),
  //     body: Container(
  //       color: ColorConstant.whiteA700,
  //       padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Center(
  //             child: _loading == true
  //                 ? null //show nothing if no picture selected
  //                 : Column(
  //                     children: [
  //                       SizedBox(
  //                         height: MediaQuery.of(context).size.width * 0.5,
  //                         width: MediaQuery.of(context).size.width * 0.5,
  //                         child: ClipRRect(
  //                           borderRadius: BorderRadius.circular(30),
  //                           child: Image.file(
  //                             _image,
  //                             fit: BoxFit.fill,
  //                           ),
  //                         ),
  //                       ),
  //                       const Divider(
  //                         height: 25,
  //                         thickness: 1,
  //                       ),
  //                       // ignore: unnecessary_null_comparison
  //                       _output != null
  //                           ? Text(
  //                               'This leaf an: ${_output[0]['label']}',
  //                               style: const TextStyle(
  //                                 color: Colors.white,
  //                                 fontSize: 18,
  //                                 fontWeight: FontWeight.w400,
  //                               ),
  //                             )
  //                           : Container(),
  //                       const Divider(
  //                         height: 25,
  //                         thickness: 1,
  //                       ),
  //                     ],
  //                   ),
  //           ),
  //           Column(
  //             children: [
  //               GestureDetector(
  //                 onTap: pickImage,
  //                 child: Container(
  //                   width: MediaQuery.of(context).size.width - 200,
  //                   alignment: Alignment.center,
  //                   padding: const EdgeInsets.symmetric(
  //                       horizontal: 24, vertical: 17),
  //                   decoration: BoxDecoration(
  //                     color: ColorConstant.green500,
  //                     borderRadius: BorderRadius.circular(15),
  //                   ),
  //                   child: const Text(
  //                     'Take A Photo',
  //                     style: TextStyle(color: Colors.white, fontSize: 16),
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 30),
  //               GestureDetector(
  //                 onTap: pickGalleryImage,
  //                 child: Container(
  //                   width: MediaQuery.of(context).size.width - 200,
  //                   alignment: Alignment.center,
  //                   padding: const EdgeInsets.symmetric(
  //                       horizontal: 24, vertical: 17),
  //                   decoration: BoxDecoration(
  //                     color: ColorConstant.green500,
  //                     borderRadius: BorderRadius.circular(15),
  //                   ),
  //                   child: const Text(
  //                     'Pick From Gallery',
  //                     style: TextStyle(color: Colors.white, fontSize: 16),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
