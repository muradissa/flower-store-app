import 'package:flutter/material.dart';


class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      // obscureText == password text
      obscureText: false,
      decoration: InputDecoration(
        hintText: "Enter Your Email",
        // to delete borders
        enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        //fillColor: Colors.grey,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
