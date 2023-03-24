import 'package:flutter/material.dart';

import '../../core/utls/styels.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              children: [
                Text("Products",style: Styels.title25,),
                Spacer(flex:1.bitLength,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined,color: Colors.orangeAccent,)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    height: 40,
                    width: 303,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Icon(Icons.search,color: Colors.white,),
                        ),
                        Text("Search Now...",style: TextStyle(color: Colors.white,fontSize: 12,),),
                      ],
                    ),
                  ),
                ),
                //Spacer(flex:1.bitLength,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.filter_list,color: Colors.white,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
