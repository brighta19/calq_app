class NumberInput {
  String _numberStr = "0";
  bool _isNegative = false;
  bool _isAPercentage = false;

  bool get _hasDecimalPoint => _numberStr.contains('.');

  void addDigit(int digit) {
    if (_numberStr == "0") {
      if (digit != 0) {
        _numberStr = digit.toString();
      }
    } else {
      _numberStr += digit.toString();
    }
  }

  void removeRightmostDigit() {
    if (_numberStr.isEmpty) {
      throw Exception("There are no digits to remove");
    } else {
      _numberStr = _numberStr.substring(0, _numberStr.length - 1);
      if (_numberStr.isEmpty) _numberStr = "0";
    }
  }

  void addDecimalPoint() {
    if (_hasDecimalPoint) {
      throw Exception("Number already has a decimal point");
    } else {
      _numberStr += '.';
    }
  }

  void negate() => _isNegative = !_isNegative;

  void togglePercentage() => _isAPercentage = !_isAPercentage;

  @override
  String toString() =>
      (_isNegative ? '-' : '') + _numberStr + (_isAPercentage ? '%' : '');

  int toInt() {
    String str = (_isNegative ? '-' : '') + _numberStr;
    int number = int.parse(str);
    if (_isAPercentage) {
      number / 100;
    }
    return number;
  }
}
