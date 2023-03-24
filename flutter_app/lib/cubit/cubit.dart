
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Counter_states.dart';

class Counter_Cubit extends Cubit<Counter_states>{
  Counter_Cubit() : super(CounterA_state());
  int team_A=0;
  int team_B=0;
  void teamscounter({required String team,required int button_number}){
    if(team=="A"){
      team_A+=button_number;
      emit(CounterA_state());
    }
    else{
      team_B+=button_number;
      emit(CounterB_state());
    }
  }
void resetcounter(){
    team_A=0;
    emit(CounterA_state());
    team_B=0;
    emit(CounterB_state());
}
}