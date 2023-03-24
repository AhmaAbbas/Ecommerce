
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sizer/sizer.dart';
import 'package:social_app/core/utls/routers.dart';
import '../../../../core/customs/custom_button.dart';
import '../../../../core/customs/show_snackbar.dart';
import '../../../../core/utls/styels.dart';
import '../manger/register_cubit/register_bloc.dart';
import '../manger/register_cubit/register_states.dart';
import 'widgets/register_feilds.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // bool colorcustombouuton=false;
  final  GlobalKey<FormState> formkey=GlobalKey();
  //bool load=false;
  @override
  Widget build(BuildContext context) {
    var registerbloc=BlocProvider.of<RegisterCubit>(context);
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        if(state is RegisterLoadingState)
        {
          registerbloc.loading=true;
        }
        else if(state is RegisterSuccessUSerCreateState)
        {
          registerbloc.loading=false;
          registerbloc.custombuttcolor=true;
          snackbar(context,"registered Successfuly");
          GoRouter.of(context).push(App_Routers.home);
        }
        else if(state is FauilerRegisterState)
        {
          registerbloc.loading=false;
          snackbar(context,state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: registerbloc.loading,
          child: SafeArea(
            child: Scaffold(
              //appBar: AppBar(title: Text("Create Account"),),
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Create Account",style: Styels.titlestyle25sp,),
                          SizedBox(height: 1.h,),
                          Text("Please create an acount to find your dream job",
                              style: Styels.titlestyle10sp),
                          SizedBox(height: 4.h,),
                          const Register_Feilds(),
                          SizedBox(height: 4.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?",style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                              TextButton(
                                onPressed: (){
                                  GoRouter.of(context).push(App_Routers.login);
                                }, child: Text("Log in",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.blueAccent
                                ),), )
                            ],
                          ),
                          SizedBox(height: 1.h,),
                          CustomButton(
                              data: "Create account",
                              color: registerbloc.custombuttcolor,
                              onTap: ()async{
                                if(formkey.currentState!.validate())
                                {
                                  await registerbloc.addemailandpassword(
                                    password:registerbloc.password!,
                                    email: registerbloc.email!,
                                  );
                                  await registerbloc.usercreate(name: registerbloc.username!,
                                      email: registerbloc.email!,
                                      id: "1",
                                      phone:registerbloc.phone! );
                                }
                              }
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(height: 0.1.h,width:17.w,color: Colors.grey,),
                              Text("or Sign up With Account",style: TextStyle(color: Colors.grey,fontSize: 15.sp),),
                              Container(height: 0.1.h,width:17.w,color: Colors.grey,)
                            ],
                          ),
                          SizedBox(height: 1.h,),
                        ],
                      )
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


