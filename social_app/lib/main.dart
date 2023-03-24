import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:social_app/core/utls/routers.dart';
import 'package:social_app/features/register/presentation/manger/login_cubit/login_cubit.dart';
import 'package:social_app/features/register/presentation/manger/register_cubit/register_bloc.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Social_APP());
}

class Social_APP extends StatelessWidget {
  const Social_APP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType){
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>RegisterCubit()),
            BlocProvider(create: (context)=>Login_Cubit()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: App_Routers.router,
          ),
        );
        },
    );
  }
}

