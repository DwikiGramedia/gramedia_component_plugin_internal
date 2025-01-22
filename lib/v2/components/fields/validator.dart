import 'package:form_validator/form_validator.dart';

class TextValidator {
  static String? Function(String?) fullnameValidator = ValidationBuilder(
    requiredMessage: 'Nama Lengkap Wajib Diisi',
  ).maxLength(80, 'Nama Lengkap Maximum 80 karakter').build();

  static String? Function(String?) usernameValidator = ValidationBuilder(
    requiredMessage: 'Username Wajib Diisi',
  )
      .regExp(
        RegExp(r'^[a-zA-Z0-9._-]+$'),
        'Format tidak valid',
      )
      .minLength(6, 'Username Minimum 6 karakter')
      .maxLength(30, 'Username Maximum 30 karakter')
      .build();

  static String? Function(String?) emailValidator = ValidationBuilder(
    requiredMessage: 'Email Wajib Diisi',
  ).email('Format tidak valid.').build();

  static String? Function(String?) passwordValidator = ValidationBuilder(
    requiredMessage: 'Kata Sandi Wajib Diisi',
  ).minLength(8, 'Kata Sandi Minimum 8 karakter').build();
}
