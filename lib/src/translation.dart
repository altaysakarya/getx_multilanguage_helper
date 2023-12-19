import 'dart:ui';

import 'package:get/get.dart';
import 'package:getx_multilanguage_helper/controllers/app_language_controller.dart';

// Translations class for handling multilanguage translations using GetX.
class GetxMultilanguageHelperTranslation extends Translations {
  final languageController = Get.find<GetxMultilanguageHelperController>();

  @override
  Map<String, Map<String, String>> get keys => languageController.keys;

  // Gets the default locale from the language controller.
  static Locale? get defaultLocale {
    final languageController = Get.find<GetxMultilanguageHelperController>();
    return languageController.defaultLocale;
  }

  // Gets the fallback locale from the language controller.
  static Locale? get fallbackLocale {
    final languageController = Get.find<GetxMultilanguageHelperController>();
    return languageController.defaultLocale;
  }
}
