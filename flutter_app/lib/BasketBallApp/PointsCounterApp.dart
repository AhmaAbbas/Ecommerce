import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/Counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';

class Basket_CounterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Counter_Cubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Basket_Ball(),
      ),
    );
  }
}

class Basket_Ball extends StatelessWidget {
  int teamA=0;
  @override
  Widget build(BuildContext context) {
    var bloc=BlocProvider.of<Counter_Cubit>(context);
    return BlocConsumer<Counter_Cubit,Counter_states>(builder: (context,state){
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: Colors.orange,
            title:Text("Pints App"),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("Score A",style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 10,),
                            Text("${BlocProvider.of<Counter_Cubit>(context).team_A}",style: TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.bold,
                            ),),
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(130, 40),
                                ),
                                onPressed: (){
                                  bloc.teamscounter(team: 'A',button_number: 1);
                                },
                                child: Text("Add 1 Point",
                                  style: TextStyle( fontSize: 18,color: Colors.black),)),
                            SizedBox(height: 10,),
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(130, 40),
                                ),
                                onPressed: (){
                                  bloc.teamscounter(team: 'A',button_number: 2);
                                },
                                child: Text("Add 2 Point",
                                  style: TextStyle( fontSize: 18,color: Colors.black),)),
                            SizedBox(height: 10,),
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(130, 40),
                                ),
                                onPressed: (){
                                  bloc.teamscounter(team: 'A',button_number: 3);
                                },
                                child: Text("Add 3 Point",
                                  style: TextStyle( fontSize: 18,color: Colors.black),))
                          ],
                        ),
                        VerticalDivider(
                          width: 3,
                          color: Colors.grey,
                          thickness: 2,
                          endIndent: 200,
                        ),
                        Column(
                          children: [
                            Text("Score B",style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 10,),
                            Text("${BlocProvider.of<Counter_Cubit>(context).team_B}",style: TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.bold,
                            ),),
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(130, 40),
                                ),
                                onPressed: (){
                                  bloc.teamscounter(team: 'B',button_number: 1);
                                },
                                child: Text("Add 1 Point",
                                  style: TextStyle( fontSize: 18,color: Colors.black),)),
                            SizedBox(height: 10,),
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(130, 40),
                                ),
                                onPressed: (){
                                  bloc.teamscounter(team: 'B',button_number: 2);
                                },
                                child: Text("Add 2 Point",
                                  style: TextStyle( fontSize: 18,color: Colors.black),)),
                            SizedBox(height: 10,),
                            ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(130, 40),
                                ),
                                onPressed: (){
                                  bloc.teamscounter(team: 'B',button_number: 3);
                                },
                                child: Text("Add 3 Point",
                                  style: TextStyle( fontSize: 18,color: Colors.black),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(130, 40),
                    ),
                    onPressed: (){
                      bloc.resetcounter();
                    },
                    child: Text("Reset",
                      style: TextStyle( fontSize: 18,color: Colors.black),)),
              ],
            ),
          ),
        ),
      );
    }, listener: (context,state){
      if(state==CounterA_state){
        //teamA=BlocProvider.of<Counter_Cubit>(context).team_A;
      }
      else{
        //teamB=BlocProvider.of<Counter_Cubit>(context).team_B;
      }
    });
  }
}
