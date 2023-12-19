# Getx Multilanguage Helper

This Flutter package provides a convenient way to manage multilanguage support in your Flutter applications using the GetX state management library. It includes controllers, translations, and configuration classes to streamline the implementation of multilanguage features.

## Buy Me A Coffee ☕️

<a href="https://www.buymeacoffee.com/altaysakarya" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>


## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  getx_multilanguage_helper: ^version_number
```

## Usage

### Adding Language JSON Files
Place language-specific JSON files in the specified translation path (assets/languages/). For example, create en.json and tr.json files for English and Turkish translations, respectively.

#### en.json:
```json
{
  "app_title": "My App",
  "welcome_message": "Welcome to My App!",
  // Add more key-value pairs for English translations...
}
```

### Initialize GetxMultilanguageHelperController
In your main.dart file, initialize the GetxMultilanguageHelperController with the desired configuration. You can specify the translation path, supported languages, default locale, and fallback locale.

```dart
void main() async {
  await Get.putAsync(
    () async => await GetxMultilanguageHelperController().init(
      config: GetxMultilanguageHelperConfiguration(
        translationPath: 'assets/languages/',
        languages: [
          LanguageModel(title: 'en'.tr, localeKey: 'en_EN'),
          LanguageModel(title: 'tr'.tr, localeKey: 'tr_TR'),
          LanguageModel(title: 'de'.tr, localeKey: 'de_DE'),
          // Add more languages as needed...
        ],
        defaultLocale: const Locale('en', 'EN'),
        fallbackLocale: const Locale('de', 'DE'),
      ),
    ),
  );
  runApp(const Main());
}
```

### Configure GetMaterialApp
In your main widget, configure the GetMaterialApp with the GetxMultilanguageHelperTranslation for translations, default locale, and fallback locale.

```dart
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: GetxMultilanguageHelperTranslation(),
      locale: GetxMultilanguageHelperTranslation.defaultLocale,
      fallbackLocale: GetxMultilanguageHelperTranslation.fallbackLocale,
      // Add other configurations as needed...
    );
  }
}
```


