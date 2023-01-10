import 'package:get/get.dart';

import 'index.dart';
import '/common/store/store.dart';
import '/common/routes/routes.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changPage(int index) async {
    state.index.value = index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
