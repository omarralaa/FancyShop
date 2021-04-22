class CategoryItemModel {
  int id;
  String name;
  String store;
  double price;
  int discount;
  double rating;
  int numberOfRatings;
  String imageUrl;

  //   {
  //   'name': 'Evening Dress',
  //   'discount': 20,
  //   'rating': 4.7,
  //   'store': 'Dorothy Perkins',
  //   'numberOfRatings': 10,
  //   'price': 15.0,
  //   'image': 'https://c.stocksy.com/a/YHo300/z9/908272.jpg',
  // },

  CategoryItemModel({
    this.id,
    this.name,
    this.store,
    this.price,
    this.discount,
    this.rating,
    this.numberOfRatings,
    this.imageUrl,
  });

  CategoryItemModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
