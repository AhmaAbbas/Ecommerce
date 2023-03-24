import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loginstates.dart';

class Login_Cubit extends Cubit<LoginStates>{
  Login_Cubit():super(Login_InitialStates());
  bool loadedmodalprogresshud=false;
  bool colorcustombuttonlogin=false;
  String? email,password;
  bool checkbox=false;
  setcheckbox(){
    emit(Checkboxstate());
  }
  Future<void> login({required String email,required String password})async{
    try{
      emit(Login_LoadingStates());
      final credential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      emit(Login_SuccessStates());
    }on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(Login_FailureStates(error: 'user-not-found'));
      } else if (e.code == 'wrong-password') {
        emit(Login_FailureStates(error: 'wrong-password'));
        //const SnackBar(content: Text('Wrong password provided for that user.'),);
      }
    }
  }
}