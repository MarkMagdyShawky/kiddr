// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welecome to kiddr, Let's Start `
  String get MyHomeWelcome {
    return Intl.message(
      'Welecome to kiddr, Let\'s Start ',
      name: 'MyHomeWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get MyHomeLogin {
    return Intl.message(
      'Login',
      name: 'MyHomeLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get MyHomeSignUp {
    return Intl.message(
      'Sign Up',
      name: 'MyHomeSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get OnBordingSkip {
    return Intl.message(
      'Skip',
      name: 'OnBordingSkip',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get OnBordingDone {
    return Intl.message(
      'Done',
      name: 'OnBordingDone',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to kiddr!`
  String get IntroScreenWelcome {
    return Intl.message(
      'Welcome to kiddr!',
      name: 'IntroScreenWelcome',
      desc: '',
      args: [],
    );
  }

  /// `kiddr is your personal guide to understanding your child's health. Our expert system utilizes advanced algorithms to assess symptoms and provide accurate diagnoses and treatment recommendations.`
  String get IntroScreenQuote {
    return Intl.message(
      'kiddr is your personal guide to understanding your child\'s health. Our expert system utilizes advanced algorithms to assess symptoms and provide accurate diagnoses and treatment recommendations.',
      name: 'IntroScreenQuote',
      desc: '',
      args: [],
    );
  }

  /// `kiddr Service`
  String get IntroScreen2text1 {
    return Intl.message(
      'kiddr Service',
      name: 'IntroScreen2text1',
      desc: '',
      args: [],
    );
  }

  /// `  we are here to help you 24/7 children’s health is important `
  String get IntroScreen2text2 {
    return Intl.message(
      '  we are here to help you 24/7 children’s health is important ',
      name: 'IntroScreen2text2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get LoginWelcome {
    return Intl.message(
      'Welcome Back',
      name: 'LoginWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Enter your data to Login`
  String get LoginSubtitle {
    return Intl.message(
      'Enter your data to Login',
      name: 'LoginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get LoginNoAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'LoginNoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login Successfully`
  String get SucessMessage {
    return Intl.message(
      'Login Successfully',
      name: 'SucessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get LoginEmailCheck {
    return Intl.message(
      'Please enter your email',
      name: 'LoginEmailCheck',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get LoginEmailHint {
    return Intl.message(
      'Email',
      name: 'LoginEmailHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get LoginPasswordCheck {
    return Intl.message(
      'Please enter your password',
      name: 'LoginPasswordCheck',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get LoginPasswordHint {
    return Intl.message(
      'Password',
      name: 'LoginPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email First`
  String get LoginEmailEMpty {
    return Intl.message(
      'Enter Your Email First',
      name: 'LoginEmailEMpty',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get LoginResetpass {
    return Intl.message(
      'Reset Password',
      name: 'LoginResetpass',
      desc: '',
      args: [],
    );
  }

  /// `Check your email and reset your passowrd.`
  String get LoginResetEmail {
    return Intl.message(
      'Check your email and reset your passowrd.',
      name: 'LoginResetEmail',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get LoginForgetPass {
    return Intl.message(
      'Forget Password?',
      name: 'LoginForgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Wronge Email or Password`
  String get LoginWrongPass {
    return Intl.message(
      'Wronge Email or Password',
      name: 'LoginWrongPass',
      desc: '',
      args: [],
    );
  }

  /// `Continue With Google `
  String get LoginContinueWithGoogle {
    return Intl.message(
      'Continue With Google ',
      name: 'LoginContinueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Your love and care are the greatest gifts you can give your baby.`
  String get GetStartedMessage {
    return Intl.message(
      'Your love and care are the greatest gifts you can give your baby.',
      name: 'GetStartedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get GetStarted {
    return Intl.message(
      'Get Started',
      name: 'GetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get SignupCreateAccount {
    return Intl.message(
      'Create new account',
      name: 'SignupCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have account? `
  String get SignUpAlreadyHaveAccount {
    return Intl.message(
      'Already have account? ',
      name: 'SignUpAlreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get SignUpUsernameHint {
    return Intl.message(
      'Username',
      name: 'SignUpUsernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your username`
  String get SignUpUsernameEmpty {
    return Intl.message(
      'Please enter your username',
      name: 'SignUpUsernameEmpty',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak`
  String get SignUpWeakPass {
    return Intl.message(
      'The password provided is too weak',
      name: 'SignUpWeakPass',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email`
  String get SignUpAlreadyExists {
    return Intl.message(
      'The account already exists for that email',
      name: 'SignUpAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get SomethingWrong {
    return Intl.message(
      'Something went wrong',
      name: 'SomethingWrong',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get TryAgain {
    return Intl.message(
      'Try again',
      name: 'TryAgain',
      desc: '',
      args: [],
    );
  }

  /// `You may have: `
  String get ResultMayHave {
    return Intl.message(
      'You may have: ',
      name: 'ResultMayHave',
      desc: '',
      args: [],
    );
  }

  /// `Description: `
  String get ResultDescription {
    return Intl.message(
      'Description: ',
      name: 'ResultDescription',
      desc: '',
      args: [],
    );
  }

  /// `Symptoms: `
  String get ResultSymptoms {
    return Intl.message(
      'Symptoms: ',
      name: 'ResultSymptoms',
      desc: '',
      args: [],
    );
  }

  /// `We suggest you to do: `
  String get ResultSuggest {
    return Intl.message(
      'We suggest you to do: ',
      name: 'ResultSuggest',
      desc: '',
      args: [],
    );
  }

  /// `Common Cold`
  String get CommonCold {
    return Intl.message(
      'Common Cold',
      name: 'CommonCold',
      desc: '',
      args: [],
    );
  }

  /// `Flu`
  String get Flu {
    return Intl.message(
      'Flu',
      name: 'Flu',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
