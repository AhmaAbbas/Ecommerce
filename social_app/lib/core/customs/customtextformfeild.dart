import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Custom_Textformfeild extends StatelessWidget {
  Custom_Textformfeild({
    this.label_text,
    this.suffixIcon,
    this.onchaged,
    this.obsecure=false,
    this.inputtype,
    this.hintText,
    this.prefixicon,
    this.validator,
    this.border=9,
  });
  double border;
  String? label_text;
  String? hintText;
  IconData? suffixIcon;
  IconData? prefixicon;
  Function(String)? onchaged;
  bool? obsecure;
  TextInputType? inputtype;
  String? Function(String?)? validator;
  //Function(String)? validate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.black54
            )
        ),
        child: TextFormField(
          autofocus: true,
          obscureText:obsecure! ,
          keyboardType: inputtype,
          validator: validator,
          //     (value){
          //   if(value!.isEmpty)
          //   {
          //     return 'this feild is required';
          //   }
          // },
          onChanged: onchaged,
          decoration: InputDecoration(
              labelText: label_text,
              hintText: hintText,
              labelStyle: const TextStyle(color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(border.sp),
                  borderSide: BorderSide(color: Colors.grey.shade300)
              ),
              prefixIcon: IconButton(
                onPressed: (){},
                icon: Icon(prefixicon),
              ),
              suffixIcon: IconButton(onPressed: (){},icon: Icon(suffixIcon,
                color: Colors.grey,),),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(border.sp),
                  borderSide: BorderSide(color: Colors.black)
              )
          ),
        ),
      ),
    );
  }
}
