import 'package:get/get.dart';

import 'index.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changPage(int index) async {
    state.index.value = index;
  }
}
