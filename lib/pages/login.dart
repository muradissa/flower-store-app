import 'package:flower_store_app/shared/email_textfield.dart';
import 'package:flower_store_app/shared/primary_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  //const Login({key? key}):super(key: key);
  const Login ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                const SizedBox(
                  height: 100,
                ),

                PrimaryTextField(
                    textType: TextInputType.emailAddress,
                    holderPlace: "Enter Your Email",
                    isPassword: false
                ),

                const SizedBox(
                  height: 40,
                ),

                // textType holderPlace isPassword
                PrimaryTextField(
                    textType: TextInputType.text,
                    holderPlace: "Enter Your Password",
                    isPassword: true
                ),

                const SizedBox(
                  height: 40,
                ),

                ElevatedButton(
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    elevation: 3,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),

        )
            
    );
  }
}