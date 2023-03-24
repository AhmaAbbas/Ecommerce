import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/register/presentation/manger/login_cubit/login_cubit.dart';
import '../../../../../core/customs/customtextformfeild.dart';
class Login_Feilds extends StatelessWidget {
  const Login_Feilds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginbloc=BlocProvider.of<Login_Cubit>(context);
    return Column(
      children: [
        Custom_Textformfeild(
          onchaged: (value)
          {
            loginbloc.email=value;
          },
          hintText: "email",
          prefixicon: Icons.email_outlined,
          validator: (value){
            if(value!.isEmpty)
            {
              return "This Feild must not be empty";
            }
            return null;
          },
        ),
        Custom_Textformfeild(
          onchaged: (value)
          {
            loginbloc.password=value;
          },
          hintText: "password",
          prefixicon: Icons.lock_open_outlined,
          suffixIcon: Icons.visibility_off_outlined,
          validator: (value){
            if(value!.isEmpty)
            {
              return "password must be at least 8 characters";
            }
            return null;
          },
        ),
      ],
    );
  }
}
