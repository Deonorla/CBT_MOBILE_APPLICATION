import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:camera/camera.dart';
import 'package:cbt_mobile_application/screens/view/question_paper_screen.dart';

import 'package:cbt_mobile_application/utils/face_detection/face_detection_util.dart';
import 'package:cbt_mobile_application/widgets/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import '../../constants/colors.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> with WidgetsBindingObserver {
  List<CameraDescription>? _cameras;
  CameraController? _cameraController;
  Future<void>? _initializeControllerFuture;
  XFile? lastImage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initCameras();
    FaceDetectionUtil.initialize();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cameraController!.dispose();
    FaceDetectionUtil.close();
    super.dispose();
  }

  Future<void> initCameras() async {
    try {
      _cameras = await availableCameras();
      _cameraController =
          CameraController(_cameras![1], ResolutionPreset.medium);

      _cameraController?.setFlashMode(FlashMode.off);

      _initializeControllerFuture = _cameraController!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } catch (e) {
      debugPrint("Failed to initialize camera: $e");
      Toast.show(
          context,
          "Failed to initialize cameras, please make sure to give necessary permissions",
          "Failed",
          ContentType.failure);
    }
  }

  _buildCameraStream() {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the preview.
          return Container(
            padding: EdgeInsets.all(6),
            child: CameraPreview(_cameraController!),
          );
        } else {
          // Otherwise, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  _buildImage() {
    return Container(
      padding: const EdgeInsets.all(6),
      // child:
      //     lastImage != null ? Image.file(File(lastImage!.path)) : Container(),
      child: Container(),
    );
  }

  _buildVideoSection() {
    return Row(
      children: [
        Expanded(
          child: _buildCameraStream(),
        ),
        Expanded(
          child: _buildImage(),
          // child: Container(),
        ),
      ],
    );
  }

  _onPictureClicked() async {
    try {
      await _initializeControllerFuture;
      lastImage = await _cameraController!.takePicture();
      setState(() {});
    } catch (e) {
      Toast.show(context, e.toString(), "Failed", ContentType.failure);
    }
  }

  _onAITapped() async {
    if (lastImage == null) {
      Toast.show(context, "Failed to capture image Failed", "Failed",
          ContentType.failure);
      return;
    }

    String path = lastImage!.path;
    List<Face> faces = await FaceDetectionUtil.detectFromImagePath(path);

    final CheatingStatus cheatingStatus =
        FaceDetectionUtil.detectCheating(faces.length > 0 ? faces[0] : null);

    if (cheatingStatus == CheatingStatus.detected) {
      Toast.show(
          Get.context, "CHEATING DETECTED", "Failed", ContentType.failure);
    } else if (cheatingStatus == CheatingStatus.notDetected) {
      Toast.show(
          Get.context, "NO CHEATING DETECTED", "Success", ContentType.success);
    } else {
      Toast.show(Get.context, "Failed to capture image Failed", "Failed",
          ContentType.failure);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              // _buildVideoSection(),
              // const QuestionScreen()
            ],
          ),
        ),
      ),
    );
  }
}
