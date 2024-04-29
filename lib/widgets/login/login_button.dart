import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trim_spot_admin_side/blocs/login_bloc/login_button_bloc.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 150),
      child: Material(
        
          color: cyanColor,
          borderRadius: BorderRadius.circular(90),
          child: InkWell(
            hoverColor: Colors.green.shade400,
            onTap: () {
              () {
                context.read<LoginButtonBloc>().add(LoginButtonPressed());
                return null;
              }();
            },
            borderRadius: BorderRadius.circular(90),
            child: Container(
              width: mediaqueryWidth(0.3, context),
              height: mediaqueryHeight(0.045, context),
              decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(90)),
              child: Center(
                child: myFont("Login",
                    fontFamily: balooChettan,
                    fontSize: mediaqueryHeight(0.02, context),
                    fontWeight: FontWeight.w600,
                    fontColor: blackColor),
              ),
            ),
          )),
    );
  }
}
