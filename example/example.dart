import 'package:flutter/widgets.dart';
import 'package:getx_multilanguage_helper/getx_multilanguage_helper.dart';

void main() async {
  // Initialize GetxMultilanguageHelperController with configuration.
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

  // Run the application with the Main widget.
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Configure GetMaterialApp with multilanguage support.
    return GetMaterialApp(
      translations: GetxMultilanguageHelperTranslation(),
      locale: GetxMultilanguageHelperTranslation.defaultLocale,
      fallbackLocale: GetxMultilanguageHelperTranslation.fallbackLocale,
    );
  }
}
