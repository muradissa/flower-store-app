import 'package:flower_store_app/shared/colors.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget{
    const Home({Key?key}) : super(key: key);

    @override
    Widget build(BuildContext context){
      return SafeArea(child:
          Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            backgroundColor: appBarBlue,
            actions :[
               Row(
                children: [
                  Stack(
                    children: [
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.add_shopping_cart)
                      ),
                      Container(
                        child:Text("20" ,style: TextStyle(color: Colors.black,),),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 40, 180, 241 ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child:
                      Text(
                          "\$ 202",
                          style: TextStyle(fontSize: 18)
                      ),
                  )
                ],
              )
           ]
          ),
        )
      );
    }


}