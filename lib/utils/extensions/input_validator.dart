extension InputValidator on String? {
  //Validate Email
  bool isValidateEmailFormat() {
    return this == null
        ? false
        : RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
          ).hasMatch(this!);
  }
}
