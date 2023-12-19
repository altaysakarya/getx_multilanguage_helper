import 'dart:ui';

import 'package:getx_multilanguage_helper/getx_multilanguage_helper.dart';

// Configuration class for GetxMultilanguageHelper.
class GetxMultilanguageHelperConfiguration {
  String translationPath; // Path to the translations folder
  List<LanguageModel> languages; // List of supported languages
  Locale? defaultLocale; // Default locale for the application
  Locale? fallbackLocale; // Fallback locale if the requested locale is not available

  // Constructor to initialize GetxMultilanguageHelperConfiguration.
  GetxMultilanguageHelperConfiguration({
    required this.translationPath,
    required this.languages,
    this.defaultLocale,
    this.fallbackLocale,
  });
}
