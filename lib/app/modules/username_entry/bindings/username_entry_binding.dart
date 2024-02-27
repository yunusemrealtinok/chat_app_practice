import 'package:get/get.dart';

import '../controllers/username_entry_controller.dart';

class UsernameEntryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsernameEntryController>(
      () => UsernameEntryController(),
    );
  }
}
