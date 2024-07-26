import 'package:audlabs/app/audlabs/audlabs_app.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  Future splashAnimation() async {
    await Future.wait([
      Future.delayed(
        const Duration(milliseconds: 3000),
      ),
    ]).then((responseList) async {
      Get.to(const AudlabsApp());
    });
  }
}
