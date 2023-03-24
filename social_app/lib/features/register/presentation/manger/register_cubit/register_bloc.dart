import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/register/data/model/usercreate.dart';

import 'register_states.dart';

class RegisterCubit extends Cubit<RegisterStates>{
  bool loading=false;
  RegisterCubit():super(RegisterInitialState());
  bool custombuttcolor=false;
  String? email , password,username,phone;
  Future<void> addemailandpassword({required String email,required String password })async{
    try{
      emit(RegisterLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      emit(SuccessfulRegisterState());
    }on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(FauilerRegisterState(error: 'weak-password'));
      } else if (e.code == 'email-already-in-use') {
        emit(FauilerRegisterState(error: 'email-already-in-use'));
      }
    }
  }
  Future<void> usercreate({
    required String name,
    required String email,
    required String id,
    required String phone,
})async {
    User_Create user1=User_Create(email: email, phone: phone, id: id, name: name);
    await FirebaseFirestore.instance.collection("user").doc(id).set(user1.tomap()).then((value){
      emit(RegisterSuccessUSerCreateState());
    }).catchError((error){
      emit(RegisterFaluireUSerCreateState(error: error.toString()));
    });
  }


}