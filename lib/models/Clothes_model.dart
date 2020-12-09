class Clothes{
  String imageUrl; 
  String name; 
  int price; 

  Clothes({
    this.imageUrl, 
    this.name,
    this.price,

  });
}

final List<Clothes> clothes = [
  Clothes(
    imageUrl: 'assets/images/buttonDownShirt.jpg', 
    name: 'Button Down Shirt', 
    price: 3,
  ), 

  Clothes(
    imageUrl :'assets/images/blouse.jpg', 
    name: 'Blouse', 
    price: 5,
  ), 

  Clothes(
    imageUrl:'assets/images/pants.jpg', 
    name: 'Pants', 
    price: 6,
  ), 

  Clothes(
    imageUrl: 'assets/images/dress.jpg', 
    name: 'dress', 
    price: 9
  ), 

  Clothes(
    imageUrl:'assets/images/windjacket.jpg',
    name: 'Wind Jacket', 
    price: 6
  ),
];