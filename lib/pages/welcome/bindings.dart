import 'package:get/get.dart';

import 'index.dart';

class WelcomeBlinding implements Bindings {
  @override
  void dependencies() {
    // ignore: todo
    // TODO: implement dependencies
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
