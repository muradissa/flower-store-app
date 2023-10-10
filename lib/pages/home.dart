import 'package:flower_store_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../model/product.dart';

class Home extends StatelessWidget{

 const Home({Key?key}) : super(key: key);
 //    final List<Map> products = List.generate(8, (index) => {
 //      "id": index,
 //      "name": "Flower $index",
 //      "price": (Random().nextInt(80)+20)
 //    }).toList();

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

            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2/3,
                      crossAxisSpacing: 10 ,
                      mainAxisSpacing: 33,

                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context ,int index){
                    // return Container(
                    //   color: Color.fromARGB(10, 2, 2, 2),
                    //
                    //   child:  Column(
                    //
                    //     children: [
                    //       GridTile(
                    //           child:
                    //               ClipRRect(
                    //                 borderRadius: BorderRadius.circular(500),
                    //                 child :Image(
                    //                   image: AssetImage("assets/img/flower"+index.toString()+".png") ,
                    //                   fit: BoxFit.cover,
                    //                   height:180,
                    //                 ),
                    //               )
                    //       ),
                    //       Text(index.toString())
                    //     ],
                    //   ),
                    // );

                    // return GridTile(
                    //
                    //     child: Stack(
                    //       children: [
                    //         Positioned(
                    //           right: 10,
                    //             left: 10,
                    //             bottom: 20,
                    //             top: 10,
                    //             child: ClipRRect(
                    //               borderRadius: BorderRadius.circular(30),
                    //               child: Image.asset("assets/img/flower"+index.toString()+".png"),
                    //
                    //           )
                    //         ),
                    //       ],
                    //     ),
                    //   footer: Text(index.toString(),style: TextStyle(),textAlign: TextAlign.center)
                    //   ,
                    // );
                    return Container(
                      color: Color.fromARGB(20, 2, 2,2),
                      //
                      //padding: EdgeInsets.only(top: 20,bottom: 20),
                      child: GestureDetector(
                        child: GridTile(
                          //key: ValueKey(_products[index]['id']),
                          footer: GridTileBar(
                            backgroundColor: Colors.black54,
                            title: Text(
                              products[index].name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("\$${products[index].price.toString()}"),
                            trailing: const Icon(Icons.shopping_cart),
                          ),

                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 10,
                                      left: 10,
                                      bottom: 30,
                                      top: 10,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(products[index].imgPath),

                                    )
                                  ),
                                ],)
                        ),
                        onTap: (){},
                      ),
                    );
                  }
              ),
            ),
          )
      );
    }


}