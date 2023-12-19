/// Represents a language model for multilanguage support.
///
/// Example usage:
/// ```dart
/// LanguageModel(title: 'en'.tr, localeKey:'en_EN')
/// ```
class LanguageModel {
  final String title; // Translated title using GetX translation ('en'.tr, 'de'.tr)
  final String localeKey; // Locale key for the language (en_EN, de_DE)
  final String? imageAsset; // Optional image asset associated with the language

  // Constructor to initialize a LanguageModel.
  LanguageModel({required this.title, required this.localeKey, this.imageAsset});
}
