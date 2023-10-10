class Product{

  int id ;
  String name;
  double price;
  String imgPath ;
  String description ;

  Product({
    required this.id ,
    required this.name ,
    required this.price ,
    required this.imgPath ,
    required this.description ,
  });

}

final List<Product> products = [
  Product(id: 0 , name: "Flower 0", price: 32.0 , imgPath: "assets/img/flower1.png",description: ""),
  Product(id: 1 , name: "Flower 1", price: 25.0 , imgPath: "assets/img/flower2.png",description: ""),
  Product(id: 2 , name: "Flower 2", price: 24.9 , imgPath: "assets/img/flower3.png",description: ""),
  Product(id: 3 , name: "Flower 3", price: 50.0 , imgPath: "assets/img/flower4.png",description: ""),
  Product(id: 4 , name: "Flower 4", price: 36.9 , imgPath: "assets/img/flower5.png",description: ""),
  Product(id: 5 , name: "Flower 5", price: 32.5 , imgPath: "assets/img/flower6.png",description: ""),
  Product(id: 6 , name: "Flower 6", price: 19.9 , imgPath: "assets/img/flower7.png",description: ""),
  Product(id: 7 , name: "Flower 7", price: 42.7 , imgPath: "assets/img/flower0.png",description: ""),
];