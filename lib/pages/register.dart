import 'package:flower_store_app/pages/login.dart';
import 'package:flower_store_app/shared/colors.dart';
import 'package:flower_store_app/shared/email_textfield.dart';
import 'package:flower_store_app/shared/primary_textfield.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  //const Login({key? key}):super(key: key);
  const Register ({super.key});
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child:
        Scaffold(
            backgroundColor: Color.fromARGB(255, 250, 250, 250),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      PrimaryTextField(
                          textType: TextInputType.text,
                          holderPlace: "Enter Your Full Name",
                          isPassword: false
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      PrimaryTextField(
                          textType: TextInputType.emailAddress,
                          holderPlace: "Enter Your Email",
                          isPassword: false
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // textType holderPlace isPassword
                      PrimaryTextField(
                          textType: TextInputType.text,
                          holderPlace: "Enter Your Password",
                          isPassword: true
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // textType holderPlace isPassword
                      PrimaryTextField(
                          textType: TextInputType.text,
                          holderPlace: "Confirm Your Password",
                          isPassword: true
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.blueAccent,
                      //     elevation: 3,
                      //   ),
                      //   onPressed: () {},
                      // ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Register",style: TextStyle(fontSize: 16),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(btnBlue),
                              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
                          )
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",style: TextStyle(fontSize: 16),),
                          TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17

                              ),
                            ),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),

            )

        )
    );
  }
}