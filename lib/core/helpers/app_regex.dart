class AppRegex {
  AppRegex._();

  static bool isEmailValid(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static bool isPhoneVaild(String phoneNumber) {
    return RegExp(r'^[0-9]{9}$').hasMatch(phoneNumber);
  }
}
