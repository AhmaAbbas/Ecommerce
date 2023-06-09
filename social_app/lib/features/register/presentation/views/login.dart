import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/customs/custom_button.dart';
import '../../../../core/customs/show_snackbar.dart';
import '../../../../core/utls/routers.dart';
import '../../../../core/utls/styels.dart';
import '../manger/login_cubit/login_cubit.dart';
import '../manger/login_cubit/loginstates.dart';
import 'widgets/loginfeilds.dart';

import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Log_in extends StatelessWidget {
  const Log_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginbloc = BlocProvider.of<Login_Cubit>(context);
    final GlobalKey<FormState> formkey = GlobalKey();
    return BlocConsumer<Login_Cubit, LoginStates>(
      listener: (context, state) {
        if (state is Login_LoadingStates) {
          loginbloc.loadedmodalprogresshud = true;
        } else if (state is Login_SuccessStates) {
          snackbar(context,"Successfuly login");
          loginbloc.loadedmodalprogresshud = false;
          loginbloc.colorcustombuttonlogin = true;
          //const SnackBar(content: Text("Successfully login"),);
        } else if (state is Login_FailureStates) {
          loginbloc.loadedmodalprogresshud = false;
          snackbar(context,state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: loginbloc.loadedmodalprogresshud,
          child: SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: Styels.titlestyle25sp,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "please login to find your dream job",
                          style: Styels.titlestyle10sp,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        const Login_Feilds(),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
                            ),
                            TextButton(
                              onPressed: () {
                                //GoRouter.of(context).push(App_Routers.home);
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.blueAccent),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        CustomButton(
                          color: loginbloc.colorcustombuttonlogin,
                          data: "Login",
                          onTap: () async {
                            if (formkey.currentState!.validate()) {
                              await loginbloc.login(
                                  email: loginbloc.email!,
                                  password:loginbloc.password!,
                              );
                            }
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 0.1.h,
                              width: 17.w,
                              color: Colors.grey,
                            ),
                            Text(
                              "Or Login with an Account",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 15.sp),
                            ),
                            Container(
                              height: 0.1.h,
                              width: 17.w,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
