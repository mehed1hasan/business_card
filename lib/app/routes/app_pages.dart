import 'package:get/get.dart';

import '../modules/account_details/bindings/account_details_binding.dart';
import '../modules/account_details/views/account_details_view.dart';
import '../modules/cards/bindings/cards_binding.dart';
import '../modules/cards/views/cards_view.dart';
import '../modules/contacts/bindings/contacts_binding.dart';
import '../modules/contacts/views/contacts_view.dart';
import '../modules/create_account/bindings/create_account_binding.dart';
import '../modules/create_account/views/create_account_view.dart';
import '../modules/create_account_otp/bindings/create_account_otp_binding.dart';
import '../modules/create_account_otp/views/create_account_otp_view.dart';
import '../modules/forgote_password/bindings/forgote_password_binding.dart';
import '../modules/forgote_password/views/forgote_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/scan/bindings/scan_binding.dart';
import '../modules/scan/views/scan_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTE_PASSWORD,
      page: () => const ForgotePasswordView(),
      binding: ForgotePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => const ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CARDS,
      page: () => const CardsView(),
      binding: CardsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTS,
      page: () => const ContactsView(),
      binding: ContactsBinding(),
    ),
    GetPage(
      name: _Paths.SCAN,
      page: () => const ScanView(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT_OTP,
      page: () => const CreateAccountOtpView(),
      binding: CreateAccountOtpBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_DETAILS,
      page: () => AccountDetailsView(),
      binding: AccountDetailsBinding(),
    ),
  ];
}
