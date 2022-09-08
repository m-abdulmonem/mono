extension CustomStringExtensions on String {

  String removeLastCharacter({String char = ',', int count = 1}) {
    String result = "";
    if (endsWith(char)) {
      result = substring(0, length - count);
    }
    return result;
  }


  String get toCapitalize => "${this[0].toUpperCase()}${substring(1)}";

  int toInt() => int.parse(this);


  int? tryToInt([dynamic defaultValue]) =>
      isNotEmpty ? int.parse(this) : defaultValue;


  double? tryToDouble([dynamic defaultValue]) =>
      isNotEmpty ? double.parse(this) : defaultValue;

  double toDouble() => double.parse(this);
}
