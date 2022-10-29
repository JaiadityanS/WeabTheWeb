import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ta'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? taText = '',
  }) =>
      [enText, taText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

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

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoadingPage
  {
    'gp0pvoxo': {
      'en': 'Are You A Customer',
      'ta': '',
    },
    'g3h2sng4': {
      'en': 'Find amazing classic products at your choice ',
      'ta': '',
    },
    'hf21n4am': {
      'en': 'Farmer',
      'ta': '',
    },
    'zp12k5ze': {
      'en': 'A Place where you can sell your crops',
      'ta': '',
    },
    'ui5hdi7k': {
      'en': 'WareHouse ',
      'ta': '',
    },
    'mtigm5dw': {
      'en': 'Even you can enter the market ',
      'ta': '',
    },
    'znxeoagq': {
      'en': 'Get Started',
      'ta': '',
    },
    'irw8v513': {
      'en': 'Login',
      'ta': '',
    },
  },
  // Home_c
  {
    'ye1fzr8z': {
      'en': 'Hi',
      'ta': '',
    },
    'pooezryb': {
      'en': 'Various options only for you!',
      'ta': '',
    },
    'sjrvmtag': {
      'en': 'Products from Retailer',
      'ta': '',
    },
    'ndu7n5do': {
      'en': 'View all',
      'ta': '',
    },
    'un4iin9v': {
      'en': 'Rs.',
      'ta': '',
    },
    'nkj7zrix': {
      'en': 'How to brew coffee',
      'ta': '',
    },
    'kbnreigi': {
      'en': 'Learn how to brew a delicious pourover every morning.',
      'ta': '',
    },
    'alwfdgrt': {
      'en': '2m',
      'ta': '',
    },
    'r5lxy92w': {
      'en': 'Products from warehouse',
      'ta': '',
    },
    'bheyw356': {
      'en': 'View all',
      'ta': '',
    },
    'l3885t1j': {
      'en': 'Quantity',
      'ta': '',
    },
    'g87byml1': {
      'en': 'Price/kg',
      'ta': '',
    },
    'ckwk2wxb': {
      'en': 'Home',
      'ta': '',
    },
    'knfx93wp': {
      'en': 'Home',
      'ta': '',
    },
  },
  // login
  {
    'n92uxuvl': {
      'en': 'Welcome Back!',
      'ta': '',
    },
    'vuszyei5': {
      'en': 'Use the form below to access your account.',
      'ta': '',
    },
    'wvp79det': {
      'en': 'Email Address',
      'ta': '',
    },
    '49x7g1tn': {
      'en': 'Enter your email here...',
      'ta': '',
    },
    'uxneaxf6': {
      'en': 'Password',
      'ta': '',
    },
    'qfb0a1l9': {
      'en': 'Enter your email here...',
      'ta': '',
    },
    'o5n1pxtz': {
      'en': 'Forgot Password?',
      'ta': '',
    },
    'm545b241': {
      'en': 'Login',
      'ta': '',
    },
    'ekk4cksg': {
      'en': 'Don\'t have an account?',
      'ta': '',
    },
    'w9fu8hp3': {
      'en': 'Create Account',
      'ta': '',
    },
    '35t5oge6': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Signup
  {
    'amp384pj': {
      'en': 'Create Account',
      'ta': '',
    },
    'm2ghl4zn': {
      'en':
          'Create your account by filling in the information below to access the app.',
      'ta': '',
    },
    'elmcnj55': {
      'en': 'Your email address...',
      'ta': '',
    },
    '5qjohr14': {
      'en': 'Enter your email...',
      'ta': '',
    },
    'l0xb5yxa': {
      'en': 'Password',
      'ta': '',
    },
    'j3lgt0og': {
      'en': 'Please enter your password...',
      'ta': '',
    },
    '561cpnkr': {
      'en': 'Confirm Password',
      'ta': '',
    },
    '0dkh1ffj': {
      'en': 'Please enter your password...',
      'ta': '',
    },
    'zs6g45xo': {
      'en': 'Create Account',
      'ta': '',
    },
    'ztva7j80': {
      'en': 'Home',
      'ta': '',
    },
  },
  // cartw
  {
    'im83gnkh': {
      'en': 'Checkout',
      'ta': '',
    },
    '8jjki4lp': {
      'en': 'Cart',
      'ta': '',
    },
    'a1ujhmxa': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Retailer
  {
    '98tqdhgk': {
      'en': 'Retailer',
      'ta': '',
    },
    '75etfoqg': {
      'en': 'The Key to Starting Every Day Right',
      'ta': '',
    },
    't17kwhll': {
      'en': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
      'ta': '',
    },
    '9g50b7sv': {
      'en': 'ALL PRODUCTS',
      'ta': '',
    },
    'svb6nkwe': {
      'en': 'Rs.',
      'ta': '',
    },
    '2ms6k0m1': {
      'en': 'Title',
      'ta': '',
    },
    '43c4vrer': {
      'en': 'Subtitle',
      'ta': '',
    },
    '2g494hj2': {
      'en': 'subtext',
      'ta': '',
    },
    'hlzoduac': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Warehouse
  {
    'it4wjcic': {
      'en': 'Ware-House',
      'ta': '',
    },
    'i23se7qr': {
      'en': 'The Key to Starting Every Day Right',
      'ta': '',
    },
    '95bzfxe8': {
      'en': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
      'ta': '',
    },
    '9qaakwss': {
      'en': 'ALL PRODUCTS',
      'ta': '',
    },
    'b44f9zn3': {
      'en': 'Rs.',
      'ta': '',
    },
    '67s50lau': {
      'en': 'Title',
      'ta': '',
    },
    'euhbjt77': {
      'en': 'Subtitle',
      'ta': '',
    },
    'aacr59u2': {
      'en': 'subtext',
      'ta': '',
    },
    '95l01zty': {
      'en': 'Home',
      'ta': '',
    },
  },
  // forget
  {
    'kv9ugcar': {
      'en': 'Forgot Password',
      'ta': '',
    },
    '621xn3oy': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ta': '',
    },
    'wp7s0sqa': {
      'en': 'Your email address...',
      'ta': '',
    },
    'lgriikrj': {
      'en': 'Enter your email...',
      'ta': '',
    },
    'xn8j7un2': {
      'en': 'Send Link',
      'ta': '',
    },
    'q0s9ecz1': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Settings
  {
    'gcp47lyg': {
      'en': 'Account Settings',
      'ta': '',
    },
    'exrrgke5': {
      'en': 'Order History',
      'ta': '',
    },
    'pzq4npc2': {
      'en': 'Settings',
      'ta': '',
    },
    'keelutb0': {
      'en': 'Delete account',
      'ta': '',
    },
    'aaumvbk9': {
      'en': 'Forget Password',
      'ta': '',
    },
    '83fdtj0q': {
      'en': 'Log Out',
      'ta': '',
    },
    'e3j6on64': {
      'en': 'My Profile',
      'ta': '',
    },
  },
  // Cartr
  {
    'u5dg2wbw': {
      'en': 'Checkout',
      'ta': '',
    },
    '6xtp8k0f': {
      'en': 'Cart',
      'ta': '',
    },
    '5jodxnxw': {
      'en': 'Home',
      'ta': '',
    },
  },
  // checkoutr
  {
    'okylhqrv': {
      'en': 'Checkout',
      'ta': '',
    },
    'ixywr8q9': {
      'en': 'Pay',
      'ta': '',
    },
    'pp7fga5n': {
      'en': 'Order Summary',
      'ta': '',
    },
    '3bscg1m2': {
      'en': 'Review your order below before checking out.',
      'ta': '',
    },
    'yf3rects': {
      'en': 'Item Name',
      'ta': '',
    },
    '7y9ywtzw': {
      'en': 'Secondary text',
      'ta': '',
    },
    'z3yhcgd5': {
      'en': '\$1.50',
      'ta': '',
    },
    '3y3blt98': {
      'en': 'Item Name',
      'ta': '',
    },
    'paaf77up': {
      'en': 'Secondary text',
      'ta': '',
    },
    'frodg75w': {
      'en': '\$1.50',
      'ta': '',
    },
    'eibpkd4r': {
      'en': 'Price Breakdown',
      'ta': '',
    },
    'ycnrwefa': {
      'en': 'Base Price',
      'ta': '',
    },
    '87oxxkxd': {
      'en': '\$156.00',
      'ta': '',
    },
    '6bu9t3a3': {
      'en': 'Taxes',
      'ta': '',
    },
    'hze13g3v': {
      'en': '\$24.20',
      'ta': '',
    },
    'wc3skqd0': {
      'en': 'Cleaning Fee',
      'ta': '',
    },
    'ucguzfie': {
      'en': '\$40.00',
      'ta': '',
    },
    'yqms6jf7': {
      'en': 'Total',
      'ta': '',
    },
    'w4nwm7xx': {
      'en': '\$230.20',
      'ta': '',
    },
    'i9putrqt': {
      'en': 'Proceed to Checkout',
      'ta': '',
    },
    'hkbv6vyt': {
      'en': 'Home',
      'ta': '',
    },
  },
  // checkoutw
  {
    '0j29b5qs': {
      'en': 'Pay',
      'ta': '',
    },
    '060rc7zc': {
      'en': 'Chekout',
      'ta': '',
    },
    'nm83ejf9': {
      'en': 'Home',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
