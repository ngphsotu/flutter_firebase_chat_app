import 'package:get/get.dart';

import 'index.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    // ignore: todo
    // TODO: implement dependencies
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
