import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Birth_Day extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffd2bcd5),
          body: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 153,
                  backgroundColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage("assets/images/birthday.png") ,),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Ahmed Abbas Atwa",
                style:TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                )
                  ,),
                SizedBox(height: 20,),
                Text("Flutter Devloper",
                  style:TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  )
                  ,),
               Divider(color: Colors.grey,
                 thickness: 2,
                 indent: 40,
                 endIndent: 40,
                 height: 10,
               ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    child: ListTile(
                      leading: Icon(Icons.wallet_giftcard_rounded),
                      title: Text("Heppy New Year Ahmed"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child:Row(
                      children: [
                        Icon(Icons.phone_android,size: 40,),
                        SizedBox(width: 20,),
                        Text("+2 01014882307",style: TextStyle(fontSize: 18),)
                      ],
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.email,size: 40,),
                        ),
                        SizedBox(width: 20,),
                        Text("ahmaabbas64@gmail.com",style: TextStyle(fontSize: 18),)
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
