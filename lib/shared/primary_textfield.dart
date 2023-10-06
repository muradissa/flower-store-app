import 'package:flutter/material.dart';


class PrimaryTextField extends StatelessWidget {
  final TextInputType textType;  // textType holderPlace isPassword
  final String holderPlace;
  final bool isPassword;

  PrimaryTextField({Key?key,
    required this.textType,
    required this.holderPlace,
    required this.isPassword,
  }):super(key: key);
  //const PrimaryTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textType,
      // obscureText == password text
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: holderPlace,
        // to delete borders
        enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
            borderRadius: BorderRadius.all(Radius.circular(10))
          // borderSide: BorderSide(width: 2, color: Colors.grey), //<-- SEE HERE
          // borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // borderSide: BorderSide(width: 2, color: Colors.blueAccent), //<-- SEE HERE
          // borderRadius: BorderRadius.circular(8.0),
        ),
        //fillColor: Colors.grey,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
