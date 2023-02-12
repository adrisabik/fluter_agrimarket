class Product {
  String name;
  String price;
  String sold;
  String image;
  String description;

  Product({
    required this.name,
    required this.price,
    required this.sold,
    required this.image,
    required this.description,
  });
}

var productList = [
  Product(
    name: 'Zamioculcas',
    price: 'Rp. 360.000',
    sold: '12',
    image: 'assets/images/product1.png',
    description:
      'Zamioculcas zamiifolia, aka ZZ plant, is a tropical perennial native to Eastern Africa that has become popular worldwide in recent years due to its tolerance of a range of conditions. The ZZ grows smooth, naturally shiny, individual leaflets that start out a bright lime in their youth and darken to emerald green in their maturity.',
  ),
  Product(
    name: 'Monstera Deliciosa',
    price: 'Rp. 420.000',
    sold: '36',
    image: 'assets/images/product2.png',
    description:
      'Nicknamed the swiss cheese plant, the Monstera deliciosa is famous for its quirky natural leaf holes. These holes are theorized to maximize sun fleck capture on the forest floor. Depending on the season and maturity of the plant, your Monstera could arrive with no holes just yet, and be sized to grow alongside you.',
  ),
  Product(
    name: 'Leather Work Gloves',
    price: 'Rp. 100.000',
    sold: '7',
    image: 'assets/images/product3.png',
    description:
      'Gloves, committed to providing each customer a happy shopping experience, with the highest value in the gloves industry. This letter work gloves widely used in Yard Work, Gardening, Farm, Warehouse, Construction, Motorcycle,etc. Soft leather and flexible fingers make you feel more comfortable and make your work more enjoyable.',
  ),
  Product(
    name: 'Sunflower Seeds',
    price: 'Rp. 24.000',
    sold: '21',
    image: 'assets/images/product4.jpg',
    description:
      'These are large size sunflower seeds for big birds ,Sunflower Seeds Are An Excellent Daily Dose Of Vitamin E, Vitamin B1, Vitamin B6, Selenium, Folate Copper, Etc. Essential For Your Birds To Stay Healthy & Fit .High In Energy And Nutritious Bird Food. With A Wide Variety Of Wild Birds That Love Them. Attracts A Great Variety Of Birds , and also improves the life span of birds.',
  ),
];