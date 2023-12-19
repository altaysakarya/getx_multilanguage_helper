import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_multilanguage_helper/models/model_helper_configuration.dart';
import 'package:getx_multilanguage_helper/models/model_language.dart';
import 'package:getx_multilanguage_helper/src/exception.dart';

// Controller class for handling multilanguage support using GetX.
class GetxMultilanguageHelperController extends GetxController implements GetxService {
  final Map<String, Map<String, String>> _keys = {};
  Map<String, Map<String, String>> get keys => _keys;
  late GetxMultilanguageHelperConfiguration _configuration;

  Locale? get defaultLocale => _configuration.defaultLocale;
  Locale? get fallbackLocale => _configuration.fallbackLocale;
  List<LanguageModel> get languages => _configuration.languages;
  String get translationPath => _configuration.translationPath;
  GetxMultilanguageHelperConfiguration get configuration => _configuration;

  /// Initializes the multilanguage helper controller with the provided configuration.
  /// Example usage:
  /// ```dart
  /// GetxMultilanguageHelperController().init('assets/translations/', languages:[LanguageModel(title: 'en'.tr, localeKey: 'en_EN')])
  /// ```
  Future<GetxMultilanguageHelperController> init({required GetxMultilanguageHelperConfiguration config}) async {
    _configuration = config;
    if (_configuration.languages.isEmpty) {
      throw const GetxMultilanguageException('languages.isEmpty');
    }
    for (var language in config.languages) {
      Map<String, String> json = await _loadJsonData(language.localeKey.split("_").first);
      _keys[language.localeKey] = json;
    }
    return this;
  }

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(milliseconds: 500));
  }

  // Loads JSON data for the specified language file.
  Future<Map<String, String>> _loadJsonData(String fileName) async {
    if (translationPath.split('').last != '/') {
      _configuration.translationPath += '/';
    }
    String jsonContent = await rootBundle.loadString('$translationPath$fileName.json');
    final Map<String, dynamic> jsonData = json.decode(jsonContent);
    final Map<String, String> data = Map<String, String>.from(jsonData);
    return data;
  }
}
