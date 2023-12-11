import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jovial_svg/jovial_svg.dart';

/// {@template country_flags}
/// A widget that displays a country flag.
/// {@endtemplate}
class CountryFlag extends StatelessWidget {
  /// Create an instance of [CountryFlag] based on a language.
  ///
  /// {@macro country_flags}
  CountryFlag.fromLanguageCode(
    String languageCode, {
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
  }) : this._(
          key: key,
          flagCode: FlagCode.fromLanguageCode(languageCode.toLowerCase()),
          height: height,
          width: width,
          borderRadius: borderRadius,
        );

  /// {@macro country_flags}
  const CountryFlag._({
    super.key,
    this.flagCode,
    this.height,
    this.width,
    this.borderRadius,
  });

  /// The country ISO code of the flag to display.
  ///
  /// The list of country codes can be found here: https://www.iban.com/country-codes.
  final String? flagCode;

  /// The height of the flag.
  final double? height;

  /// The width of the flag
  final double? width;

  /// The border radius of the corners of the flag.
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: SizedBox(
        width: width,
        height: height,
        child: switch (flagCode) {
          String() => Semantics(
              label: flagCode,
              child: ScalableImageWidget.fromSISource(
                key: const Key('svgFlag'),
                si: ScalableImageSource.fromSI(
                  rootBundle,
                  'packages/country_flags/res/si/$flagCode.si',
                ),
              ),
            ),
          null => const ColoredBox(
              color: Colors.white,
              child: Center(
                child: Icon(Icons.question_mark),
              ),
            ),
        },
      ),
    );
  }
}
