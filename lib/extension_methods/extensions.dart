extension StringUtil on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }
}
extension StringExtensions on String {
  String concatWithSpace(String other) {
    return '$this $other';
  }

  /// DOCUMENTATION IS SUPPORTED: Concatenates two strings with a space in between.
  String operator &(String other) => '$this $other';
}

// double and int are subclasses of num.
// extension NumExtensions on num {
//   num addTen() => this + 10;
// }

//Generic extensions
extension NumGenericExtensions<T extends num> on T {
  num addTen() => this + 10;
}

main() {
  // StringUtil.isValidEmail('someString');
  'someString'.isValidEmail;
  'one'.concatWithSpace('two');
  'one' & 'two';
  num anInt = 1.addTen();
  // Run-time error!
  // Putting a 'num' which is really a 'double' into an 'int' variable
  num shouldBeDouble = 1.0.addTen();
}
