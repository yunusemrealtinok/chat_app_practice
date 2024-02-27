import 'package:get/get.dart';

import '../modules/friend_request/bindings/friend_request_binding.dart';
import '../modules/friend_request/views/friend_request_view.dart';
import '../modules/friends/bindings/friends_binding.dart';
import '../modules/friends/views/friends_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/logout/bindings/logout_binding.dart';
import '../modules/logout/views/logout_view.dart';
import '../modules/messaging/bindings/messaging_binding.dart';
import '../modules/messaging/views/messaging_view.dart';
import '../modules/phone_auth/bindings/phone_auth_binding.dart';
import '../modules/phone_auth/views/phone_auth_view.dart';
import '../modules/sms_code/bindings/sms_code_binding.dart';
import '../modules/sms_code/views/sms_code_view.dart';
import '../modules/username_entry/bindings/username_entry_binding.dart';
import '../modules/username_entry/views/username_entry_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_AUTH,
      page: () => const PhoneAuthView(),
      binding: PhoneAuthBinding(),
    ),
    GetPage(
      name: _Paths.SMS_CODE,
      page: () => const SmsCodeView(),
      binding: SmsCodeBinding(),
    ),
    GetPage(
      name: _Paths.USERNAME_ENTRY,
      page: () => const UsernameEntryView(),
      binding: UsernameEntryBinding(),
    ),
    GetPage(
      name: _Paths.FRIENDS,
      page: () => const FriendsView(),
      binding: FriendsBinding(),
    ),
    GetPage(
      name: _Paths.LOGOUT,
      page: () => const LogoutView(),
      binding: LogoutBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGING,
      page: () => MessagingView(),
      binding: MessagingBinding(),
    ),
    GetPage(
      name: _Paths.FRIEND_REQUEST,
      page: () => const FriendRequestView(),
      binding: FriendRequestBinding(),
    ),
  ];
}
