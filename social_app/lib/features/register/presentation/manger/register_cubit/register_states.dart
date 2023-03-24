class RegisterStates{}
class RegisterInitialState extends RegisterStates{}
class RegisterLoadingState extends RegisterStates{}
class SuccessfulRegisterState extends RegisterStates{}
class FauilerRegisterState extends RegisterStates{
  FauilerRegisterState({required this.error});
  String error;
}
class RegisterSuccessUSerCreateState extends RegisterStates{}
class RegisterFaluireUSerCreateState extends RegisterStates{
  RegisterFaluireUSerCreateState({required this.error});
  String error;
}


