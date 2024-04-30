import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trim_spot_admin_side/blocs/login_bloc/login_button_bloc.dart';
import 'package:trim_spot_admin_side/screens/home.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/login/form_key.dart';
import 'package:trim_spot_admin_side/utils/logo.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/utils/page_route.dart';
import 'package:trim_spot_admin_side/widgets/appbar.dart';
import 'package:trim_spot_admin_side/widgets/login/login_button.dart';
import 'package:trim_spot_admin_side/widgets/login/textform_fields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginButtonBloc(),
      child: BlocListener<LoginButtonBloc, LoginButtonState>(
        listener: (context, state) {
          if (state is NavigateToHomePage) {
            Navigator.of(context)
                .pushReplacement(normalPageRoute(const HomeScreen()));
          }
        },
        child: Scaffold(
          backgroundColor: blackColor,
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: AppLogo(size: mediaqueryHeight(0.04, context)),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: Form(
            key: loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const UsernameTextFormField(),
                SizedBox(
                  height: mediaqueryHeight(0.025, context),
                ),
                const PasswordTextFormField(),
                SizedBox(
                  height: mediaqueryHeight(0.04, context),
                ),
                const LoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
