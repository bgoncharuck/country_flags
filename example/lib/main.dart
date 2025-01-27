import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Colors.grey,
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.red,
                title: Text('Language flags'),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (_, index) => _buildLanguageFlag(_languageCodes[index]),
                  childCount: _languageCodes.length,
                ),
              ),
              SliverAppBar(
                pinned: true,
                title: Text('Country flags'),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (_, index) => _buildCountryFlag(_countryCodes[index]),
                  childCount: _countryCodes.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageFlag(String languageCode) => _FlagItem(
        flag: CountryFlag.fromLanguageCode(languageCode),
        countryCode: languageCode,
      );

  Widget _buildCountryFlag(String countryCode) => _FlagItem(
        flag: CountryFlag.fromCountryCode(countryCode),
        countryCode: countryCode,
      );
}

class _FlagItem extends StatelessWidget {
  const _FlagItem({
    required this.flag,
    required this.countryCode,
  });

  final CountryFlag flag;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: flag),
        SizedBox(height: 8),
        Expanded(
          child: Text(
            countryCode,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}

const List<String> _countryCodes = [
  'af',
  'al',
  'dz',
  'as',
  'ad',
  'ao',
  'ai',
  'aq',
  'ag',
  'ar',
  'am',
  'aw',
  'au',
  'at',
  'az',
  'bs',
  'bh',
  'bd',
  'bb',
  'by',
  'be',
  'bz',
  'bj',
  'bm',
  'bt',
  'bo',
  'bq',
  'ba',
  'bw',
  'bv',
  'br',
  'io',
  'bn',
  'bg',
  'bf',
  'bi',
  'cv',
  'kh',
  'cm',
  'ca',
  'ky',
  'cf',
  'td',
  'cl',
  'cn',
  'cx',
  'cc',
  'co',
  'km',
  'cd',
  'cg',
  'ck',
  'cr',
  'hr',
  'cu',
  'cw',
  'cy',
  'cz',
  'ci',
  'dk',
  'dj',
  'dm',
  'do',
  'ec',
  'eg',
  'sv',
  'gq',
  'er',
  'ee',
  'sz',
  'et',
  'fk',
  'fo',
  'fj',
  'fi',
  'fr',
  'gf',
  'pf',
  'tf',
  'ga',
  'gm',
  'ge',
  'de',
  'gh',
  'gi',
  'gr',
  'gl',
  'gd',
  'gp',
  'gu',
  'gt',
  'gg',
  'gn',
  'gw',
  'gy',
  'ht',
  'hm',
  'va',
  'hn',
  'hk',
  'hu',
  'is',
  'in',
  'id',
  'ir',
  'iq',
  'ie',
  'im',
  'il',
  'it',
  'jm',
  'jp',
  'je',
  'jo',
  'kz',
  'ke',
  'ki',
  'kp',
  'kr',
  'kw',
  'kg',
  'la',
  'lv',
  'lb',
  'ls',
  'lr',
  'ly',
  'li',
  'lt',
  'lu',
  'mo',
  'mg',
  'mw',
  'my',
  'mv',
  'ml',
  'mt',
  'mh',
  'mq',
  'mr',
  'mu',
  'yt',
  'mx',
  'fm',
  'md',
  'mc',
  'mn',
  'me',
  'ms',
  'ma',
  'mz',
  'mm',
  'na',
  'nr',
  'np',
  'nl',
  'nc',
  'nz',
  'ni',
  'ne',
  'ng',
  'nu',
  'nf',
  'mp',
  'no',
  'om',
  'pk',
  'pw',
  'ps',
  'pa',
  'pg',
  'py',
  'pe',
  'ph',
  'pn',
  'pl',
  'pt',
  'pr',
  'qa',
  'mk',
  'ro',
  'ru',
  'rw',
  're',
  'bl',
  'sh',
  'kn',
  'lc',
  'mf',
  'pm',
  'vc',
  'ws',
  'sm',
  'st',
  'sa',
  'sn',
  'rs',
  'sc',
  'sl',
  'sg',
  'sx',
  'sk',
  'si',
  'sb',
  'so',
  'za',
  'gs',
  'ss',
  'es',
  'lk',
  'sd',
  'sr',
  'sj',
  'se',
  'ch',
  'sy',
  'tw',
  'tj',
  'tz',
  'th',
  'tl',
  'tg',
  'tk',
  'to',
  'tt',
  'tn',
  'tr',
  'tm',
  'tc',
  'tv',
  'ug',
  'ua',
  'ae',
  'gb',
  'um',
  'us',
  'uy',
  'uz',
  'vu',
  've',
  'vn',
  'vg',
  'vi',
  'wf',
  'eh',
  'ye',
  'zm',
  'zw',
  'ax',
];
const List<String> _languageCodes = [
  'af',
  'za',
  'ar-ae',
  'ar-bh',
  'ar-dz',
  'ar-eg',
  'ar-iq',
  'ar-jo',
  'ar-kw',
  'ar-lb',
  'ar-ly',
  'ar-ma',
  'ar-om',
  'ar-qa',
  'ar-sa',
  'ar-sy',
  'ar-tn',
  'ar-ye',
  'az',
  'be',
  'be-by',
  'bg',
  'ca',
  'cs-cz',
  'cy',
  'da-dk',
  'de',
  'de-at',
  'de-ch',
  'de-li',
  'de-lu',
  'dv-mv',
  'el',
  'en',
  'en-au',
  'en-bz',
  'en-ie',
  'en-jm',
  'en-nz',
  'en-ph',
  'en-tt',
  'en-us',
  'en-zw',
  'es',
  'es-ar',
  'es-bo',
  'es-cl',
  'es-co',
  'es-cr',
  'es-do',
  'es-ec',
  'es-gt',
  'es-hn',
  'es-mx',
  'es-ni',
  'es-pa',
  'es-pe',
  'es-pr',
  'es-py',
  'es-sv',
  'es-uy',
  'es-ve',
  'et',
  'et-ee',
  'fa',
  'fi',
  'fo',
  'fr',
  'fr-mc',
  'gl',
  'gu',
  'he',
  'hi',
  'hr',
  'ba',
  'hu',
  'hy',
  'id',
  'is',
  'it',
];
