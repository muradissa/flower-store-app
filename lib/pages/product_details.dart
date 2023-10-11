import 'package:flower_store_app/model/product.dart';
import 'package:flower_store_app/provider/products_cart.dart';
import 'package:flower_store_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class ProductDetails extends StatefulWidget {

  final Product product ;
  const ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState( );
}

class _ProductDetailsState extends State<ProductDetails> {
  //const ProductDetails({Key? key}):super(key: key);
  bool showMoreLines = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text("Product Details"),
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
                      child: Consumer<ProductsCart>(
                        builder: ((context,instance,child){
                        return Text("${instance.productsCart.length}",style: TextStyle(color: Colors.black,),);
                      })),
                      padding: EdgeInsets.all(5),
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
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(widget.product.imgPath),
            Row(children: [
              Text(
                widget.product.name,
                style: TextStyle(
                    fontSize: 22 ,
                    color: Color.fromARGB(255, 15, 14, 68)
                ),
                textAlign: TextAlign.center ,
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Container(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    "\$ "+widget.product.price.toString() ,
                    style: TextStyle(
                        fontSize: 20 ,
                        color: Color.fromARGB(255, 15, 14, 68),

                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  Color.fromARGB(234, 224, 224, 224),

                  ),
                ),
              )
            ],),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text("New",style: TextStyle(fontSize: 18,color: Colors.white)),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(8)

                  ),
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Icon(Icons.star,color: Color.fromARGB(255, 255, 191, 0),size: 30,),
                    Icon(Icons.star,color: Color.fromARGB(255, 255, 191, 0),size: 30,),
                    Icon(Icons.star,color: Color.fromARGB(255, 255, 191, 0),size: 30,),
                    Icon(Icons.star,color: Color.fromARGB(255, 255, 191, 0),size: 30,),
                    Icon(Icons.star,color: Color.fromARGB(255, 255, 191, 0),size: 30,),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                      children: [
                        Icon(Icons.location_on ,color: Colors.blue,),
                        Text("Flower Shop",style: TextStyle(fontSize: 16),)
                      ]
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text("Detailes :",style: TextStyle(fontSize: 20),),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes, which in flowering plants consist of a few haploid cells which produce gametes. The male gametophyte, which produces non-motile sperm, is enclosed within pollen grains; the female gametophyte is contained within the ovule. When pollen from the anther of a flower is deposited on the stigma, this is called pollination. Some flowers may self-pollinate, producing seed using pollen from the same flower or a different flower of the same plant, but others have mechanisms to prevent self-pollination and rely on cross-pollination, when pollen is transferred from the anther of one flower to the stigma of another flower on a different individual of the same species.",
                  style: TextStyle(fontSize: 18),
                  maxLines: showMoreLines? null :4,
                  overflow: TextOverflow.fade,
                )
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    showMoreLines = !showMoreLines ;
                  });

                },
                child: Text(
                  showMoreLines?"Show Less": "Show More",
                  style: TextStyle(fontSize: 18),
                )
            ),
            SizedBox(height: 100,),


          ],),
        ),
      ),
        // bottomNavigationBar: Consumer<ProductsCart>(
        //   builder: (context, instance, child) {
        //     return Stack(
        //       children: [
        //          // The main content
        //         Positioned(
        //           bottom: 16.0, // Adjust the distance from the bottom as needed
        //           right: 16.0, // Adjust the distance from the right as needed
        //           child: ElevatedButton(
        //             onPressed: () {
        //               instance.productsCart.add(widget.product);
        //               // Add your onPressed code here!
        //             },
        //             child: Text('Add to Cart'),
        //           ),
        //         ),
        //       ],
        //     );
        //   },
        //   child: Container(), // The main content
        // ),
      floatingActionButton: Consumer<ProductsCart>(
          builder: ((context,instance,child){
            return   FloatingActionButton.extended(
              onPressed: () {
                instance.productsCart.add(widget.product);
                // Add your onPressed code here!
              },
              label: const Text('Add to Cart'),
              icon:   Icon(Icons.shopping_cart) ,


            );
          })),

    );
  }
}