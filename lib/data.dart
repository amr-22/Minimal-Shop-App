class Item{

  String? name;
  String? image;
  String? price;
  bool? inCart;

  Item({this.name, this.image, this.price, this.inCart});


}




List<Item> items =[
  Item(image: "assets/images/glasses.jpeg", name: "Glasses", price: "100", inCart: false),
  Item(image: "assets/images/hoddy.jpg", name: "Hoddy", price: "200", inCart: false),
  Item(image: "assets/images/phone.jpeg", name: "Phone", price: "300", inCart: false),
  Item(image: "assets/images/watch.jpeg", name: "Watch", price: "400", inCart: false),

];



List<Item> cartItems =[];

