import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: PapyrusTextField)
Widget buildButton(BuildContext context) {
  var fullnameController = TextEditingController();
  var emailController = TextEditingController();
  var email2Controller = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var isAgree = ValueNotifier<bool>(true);

  return PapyrusScaffold(
    appBar: const PapyrusAppBar(title: 'Papyrus Colors', centerTitle: true),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: PapyrusSpacing.s16),
      child: ListView(
        padding: const EdgeInsets.only(top: PapyrusSpacing.s16),
        children: [
          PapyrusTextField(
            controller: fullnameController,
            labelText: 'Nama Lengkap',
            validator: TextValidator.fullnameValidator,
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusTextField(
            controller: emailController,
            labelText: 'Email',
            validator: TextValidator.emailValidator,
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusTextField(
            controller: email2Controller,
            labelText: 'Email',
            validator: TextValidator.emailValidator,
            errorText: 'Email field error',
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusTextField(
            controller: usernameController,
            labelText: 'Username With Prefix',
            prefix: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: PapyrusText(
                    'Prefix',
                    style: PapyrusFont.bodyMExtraBold,
                    color: PapyrusColors.neutral500,
                  ),
                ),
              ],
            ),
            validator: TextValidator.usernameValidator,
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          PapyrusPasswordField(
            controller: passwordController,
            labelText: 'Password',
          ),
          const SizedBox(height: PapyrusSpacing.s16),
          ValueListenableBuilder(
            valueListenable: isAgree,
            builder: (_, _, _) {
              return PapyrusCheckbox(
                isAgree: isAgree,
                description: PapyrusText(
                  'Dengan mendaftar, kamu menyetujui Kebijakan Privasi Smartlib by Gramedia',
                  style: PapyrusFont.bodyMMedium,
                  maxLines: 3,
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
