import 'package:get/get.dart';

import '../../modules/cards/bindings/cards_binding.dart';
import '../../modules/contacts/bindings/contacts_binding.dart';
import '../../modules/scan/bindings/scan_binding.dart';
import '../../modules/settings/bindings/settings_binding.dart';

class InitBind extends Bindings{
  @override
  void dependencies() {
    CardsBinding().dependencies();
    ScanBinding().dependencies();
    ContactsBinding().dependencies();
    SettingsBinding().dependencies();

  }

}