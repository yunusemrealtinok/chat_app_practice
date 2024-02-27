import 'package:get/get.dart';

import '../controllers/sms_code_controller.dart';

class SmsCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SmsCodeController>(
      () => SmsCodeController(),
    );
  }
}
