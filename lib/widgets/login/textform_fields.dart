import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/utils/login/controllers.dart';
import 'package:trim_spot_admin_side/utils/login/email_and_password.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/utils/textformfields.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SizedBox(
          width: mediaqueryWidth(0.5, context),
          child: TextFormFieldCyan(
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter password";
                }
    
                if (value == password) {
                  return null;
                } else {
                  return "incorrect username";
                }
              },
              hintText: "Password",
              controller: passwordController),
        ),
      ),
    );
  }
}

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SizedBox(
          width: mediaqueryWidth(0.5, context),
          child: TextFormFieldCyan(
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter username";
                }
    
                if (value == username) {
                  return null;
                } else {
                  return "incorrect username";
                }
              },
              hintText: "Username",
              controller: usernameController),
        ),
      ),
    );
  }
}
