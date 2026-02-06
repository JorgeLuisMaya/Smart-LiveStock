import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'woap3yh4': {
      'en': 'Smart Farming Starts Here',
      'es': '',
    },
    '5icp6od7': {
      'en': 'Home',
      'es': '',
    },
    'suinlmb5': {
      'en': 'Worm Test',
      'es': '',
    },
    '3rzhis5k': {
      'en': 'Treatment',
      'es': '',
    },
    'h1bpfrzg': {
      'en': 'Weight',
      'es': '',
    },
    '6gfhuqav': {
      'en': 'Age',
      'es': '',
    },
    'k9kzaizf': {
      'en': 'Feeding',
      'es': '',
    },
    'v5bq0spj': {
      'en': 'Manage',
      'es': '',
    },
    'dzl9kmdw': {
      'en': 'Contact Us',
      'es': '',
    },
    'b97xzfhl': {
      'en': 'Home',
      'es': '',
    },
  },
  // WormTest
  {
    'zn4sfj0x': {
      'en': 'Five Point Check',
      'es': '',
    },
    'b5h7e7tp': {
      'en': 'The five point check',
      'es': '',
    },
    '3saf0r6a': {
      'en': ' helps determine whether the sheep needs to be treated for ',
      'es': '',
    },
    'emzay9pq': {
      'en': 'parasites ',
      'es': '',
    },
    'xfnmauvf': {
      'en': 'or not. ',
      'es': '',
    },
    'rr4yzrk9': {
      'en': 'ID',
      'es': '',
    },
    'uiv1rzv2': {
      'en': 'e.g. 12345678',
      'es': '',
    },
    'otgxd1v9': {
      'en': 'FAMACHA',
      'es': '',
    },
    'rl66jbrj': {
      'en': 'Notice: ',
      'es': '',
    },
    'xif6piw0': {
      'en': 'if you are not familiar with the ',
      'es': '',
    },
    'g00lbhl9': {
      'en': 'FAMACHA ',
      'es': '',
    },
    'gpy6al0r': {
      'en': 'system visit ',
      'es': '',
    },
    'mq4s1ppk': {
      'en': 'URI',
      'es': '',
    },
    'o68i2219': {
      'en': 'Notice: ',
      'es': '',
    },
    'clfixj97': {
      'en': 'analyze the area pointed by the ',
      'es': '',
    },
    '632hbd3b': {
      'en': 'blue arrow ',
      'es': '',
    },
    'eaykdtzw': {
      'en': 'in the image above, then select the ',
      'es': '',
    },
    '4152fe8e': {
      'en': 'color ',
      'es': '',
    },
    'abga04b2': {
      'en': 'below that matches that area.',
      'es': '',
    },
    'q4010uf4': {
      'en': '',
      'es': '',
    },
    '56bme7st': {
      'en': 'Select...',
      'es': '',
    },
    'oc6lto15': {
      'en': 'Search...',
      'es': '',
    },
    'sexo7wez': {
      'en': '1',
      'es': '',
    },
    '8p9fo3zl': {
      'en': '2',
      'es': '',
    },
    'd2nq24t3': {
      'en': '3',
      'es': '',
    },
    'a00xlb98': {
      'en': '4',
      'es': '',
    },
    'xzophl3b': {
      'en': '5',
      'es': '',
    },
    'v7cmep8h': {
      'en': 'Jaw',
      'es': '',
    },
    'kxhetsue': {
      'en': 'Notice: ',
      'es': '',
    },
    '74cwhnkb': {
      'en': 'analyze the area enclosed by the ',
      'es': '',
    },
    'fz2o5b5m': {
      'en': 'red circle ',
      'es': '',
    },
    '9ardwtc7': {
      'en':
          'in the image below to determine if the sheep has a submandibular edema. Checkmark the image that represents more the condition of the sheep.',
      'es': '',
    },
    'kirq2ebx': {
      'en': 'Nose',
      'es': '',
    },
    'yov9njzz': {
      'en': 'Does the sheep has a runny nose?',
      'es': '',
    },
    'tcfihn1j': {
      'en': 'Tail',
      'es': '',
    },
    'ekk2xhom': {
      'en': 'Does the sheep has diarrhea?',
      'es': '',
    },
    'z8z35cjl': {
      'en': 'Home',
      'es': '',
    },
    'uga9jg1y': {
      'en': 'Worm Test',
      'es': '',
    },
    'k1d56d34': {
      'en': 'Treatment',
      'es': '',
    },
    '7ci96bu1': {
      'en': 'Weight',
      'es': '',
    },
    'ix7dm5gv': {
      'en': 'Age',
      'es': '',
    },
    'bcer26fw': {
      'en': 'Feeding',
      'es': '',
    },
    'rb6474mv': {
      'en': 'Manage',
      'es': '',
    },
    '3s55o3ux': {
      'en': 'Contact Us',
      'es': '',
    },
    'g38k9o9e': {
      'en': 'Home',
      'es': '',
    },
  },
  // LoginPage
  {
    'jnfvwxzv': {
      'en': 'Welcome Back',
      'es': '',
    },
    's32r52yd': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
    },
    '1gxnjqhy': {
      'en': 'Email',
      'es': '',
    },
    'podkqb9d': {
      'en': 'Password',
      'es': '',
    },
    'oxr3ignn': {
      'en': 'Forgot password',
      'es': '',
    },
    'n2slwazh': {
      'en': 'Sign In',
      'es': '',
    },
    'fcrybpt7': {
      'en': 'Don\'t have an account? ',
      'es': '',
    },
    '5h1oa3bk': {
      'en': ' Sign Up here',
      'es': '',
    },
    'abr9cezh': {
      'en': 'Home',
      'es': '',
    },
  },
  // CreateAccountPage
  {
    'gs54s8uw': {
      'en': 'Create an account',
      'es': '',
    },
    'k8fwp9vs': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
    },
    'og89d40k': {
      'en': 'Email',
      'es': '',
    },
    'oj8dtxb6': {
      'en': 'Password',
      'es': '',
    },
    'tvwb3y6f': {
      'en': 'Confirm Password',
      'es': '',
    },
    '84n466lg': {
      'en': 'Create Account',
      'es': '',
    },
    'n0tbq2rh': {
      'en': 'Already have an account?',
      'es': '',
    },
    '50q9sk3y': {
      'en': ' Sign In here',
      'es': '',
    },
    'ojxbrzqo': {
      'en': 'Home',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'ffwdsxz7': {
      'en': '',
      'es': '',
    },
    'u0jzd5xi': {
      'en': '',
      'es': '',
    },
    '9y5b2ve9': {
      'en': '',
      'es': '',
    },
    'yghzadq2': {
      'en': '',
      'es': '',
    },
    'u8mjx0v6': {
      'en': '',
      'es': '',
    },
    '77m4u4ti': {
      'en': '',
      'es': '',
    },
    'r2tn6now': {
      'en': '',
      'es': '',
    },
    'yc7umwjj': {
      'en': '',
      'es': '',
    },
    'nb1lfhtl': {
      'en': '',
      'es': '',
    },
    'tinbvw0p': {
      'en': '',
      'es': '',
    },
    '3gjktjap': {
      'en': '',
      'es': '',
    },
    'itd11crg': {
      'en': '',
      'es': '',
    },
    'eyrfnm14': {
      'en': '',
      'es': '',
    },
    'ulvb7omq': {
      'en': '',
      'es': '',
    },
    '0lpckhlj': {
      'en': '',
      'es': '',
    },
    'm670kbab': {
      'en': '',
      'es': '',
    },
    '1r09a7he': {
      'en': '',
      'es': '',
    },
    'mc62d2z6': {
      'en': '',
      'es': '',
    },
    '36u3915x': {
      'en': '',
      'es': '',
    },
    '86v878b7': {
      'en': '',
      'es': '',
    },
    'd649134m': {
      'en': '',
      'es': '',
    },
    'x49d8zzw': {
      'en': '',
      'es': '',
    },
    'x8v4fzoi': {
      'en': '',
      'es': '',
    },
    'x9fuzz47': {
      'en': '',
      'es': '',
    },
    'twg2rctv': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
