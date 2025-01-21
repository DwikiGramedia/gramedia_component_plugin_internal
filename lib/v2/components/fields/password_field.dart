import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';

import 'text_field.dart';

class PapyrusPasswordField extends HookWidget {
  const PapyrusPasswordField({
    super.key,
    required this.controller,
    this.labelText,
    this.isObscure = true,
    this.validator,
    this.onTapOutside,
  });

  final TextEditingController controller;
  final String? labelText;
  final bool isObscure;
  final String? Function(String?)? validator;
  final Function(PointerDownEvent?)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    var isObscure = useState(this.isObscure);

    return PapyrusTextField(
      isObscure: isObscure.value,
      controller: controller,
      onTapOutside: onTapOutside,
      labelText: labelText ?? 'Kata Sandi',
      validator: validator ??
          ValidationBuilder(
            requiredMessage: 'Kata Sandi Wajib Diisi',
          ).minLength(8, 'Password Minimum 8 karakter').build(),
      suffixIcon: SizedBox(
        width: 20,
        height: 20,
        child: GestureDetector(
          child: isObscure.value
              ? const Icon(Icons.visibility_outlined)
              : const Icon(Icons.visibility_off_outlined),
          onTap: () => isObscure.value = !isObscure.value,
        ),
      ),
    );
  }
}
