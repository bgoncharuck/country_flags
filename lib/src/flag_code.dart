import 'package:collection/collection.dart';

/// {@template flag_code}
/// A class that provides a mapping between flag codes, country codes and
/// language codes.
/// {@endtemplate}
class FlagCode {
  static const Map<String, String> _flagCodesCountries = {};
  static const Map<String, String> _flagCodesLanguages = {
    'es': 'es',
    'de': 'de',
    'gb': 'en',
    'fr': 'fr',
  };

  /// Get the flag code from a language code.
  ///
  /// Returns `null` if the language code is not found.
  ///
  /// Source of the language codes:
  /// http://www.lingoes.net/en/translator/langcode.htm
  static String? fromLanguageCode(String languageCode) =>
      _flagCodesLanguages.entries.singleWhereOrNull((entry) => entry.value == languageCode)?.key;

  /// Get the flag code from a country code.
  ///
  /// Returns `null` if the country code is not found.
  static String? fromCountryCode(String countryCode) =>
      _flagCodesCountries.entries.singleWhereOrNull((entry) => entry.value == countryCode)?.key;
}
