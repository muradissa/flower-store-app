import 'package:flower_store_app/shared/colors.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget{
    const Home({Key?key}) : super(key: key);

    @override
    Widget build(BuildContext context){
      return SafeArea(child:
          Scaffold(
            drawer: Drawer(

              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/back.jpg") ,fit: BoxFit.cover),
                      ),
                      accountName: Text("Murad Issa"),
                      accountEmail: Text("examle@email.com"),
                      currentAccountPicture: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/avatar.jpg"),
                      ),
                      //currentAccountPictureSize: Size.square(99),
                  ),
                  ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: (){} ,),
                  ListTile(title: Text("My products"),leading: Icon(Icons.add_shopping_cart),onTap: (){} ,),
                  ListTile(title: Text("About"),leading: Icon(Icons.help_center),onTap: (){} ,),
                  Expanded(flex:2,child: Text("")),
                  ListTile(title: Text("Logout"),leading: Icon(Icons.exit_to_app),onTap: (){} ,),
                  Padding(
                    padding: const EdgeInsets.only(bottom:  5.0),
                    child:
                    Text(
                        "Developed by Murad Issa 2023",
                        style: TextStyle(fontSize: 13)
                    ),
                  )



                ],
              ),

            ),


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