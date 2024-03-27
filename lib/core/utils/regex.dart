class RegExpApp {
  static RegExp passwordWithMinimum6Characters =
      RegExp(r'[A-Za-z0-9(!@#$.)]{6,}');

  static RegExp email = RegExp(r'\S+@\S+\.\S+');
}
