import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
import 'package:shop/src/data/models/category.dart';
import 'package:shop/src/data/models/category_item.dart';

class HomeController extends GetxController {
  // STATIC DATA TO BE REPLACED FROM API CALLS
  final _tilesData = [
    {
      'title': 'New Collection',
      'image':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFzaGlvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
    },
    {
      'title': 'Men\'s hoodies',
      'image':
          'https://images.bewakoof.com/original/mustard-yellow-fleece-hoodies-men-s-plain-hoodies-aw18-196708-1554207788.jpg',
    },
    {'title': 'Summer Deals'},
    {
      'title': 'Black',
      'image':
          'https://ae01.alicdn.com/kf/HTB1NCS.arr1gK0jSZR0q6zP8XXah/Oversized-Shades-Woman-Sunglasses-Black-Fashion-Square-Glasses-Big-Frame-Sunglasses-Vintage-Retro-Glasses-Unisex-oculos.jpg_Q90.jpg_.webp',
    },
  ];

  get tilesData => _tilesData;

  final _firstCategory = CategoryModel(
    id: 1,
    name: 'Sale',
    description: 'Super summer sale',
    categoryItems: <CategoryItemModel>[
      CategoryItemModel(
        id: 1,
        name: 'Evening Dress',
        discount: 20,
        rating: 4.7,
        store: 'Dorothy Perkins',
        numberOfRatings: 10,
        price: 15.0,
        imageUrl: 'https://c.stocksy.com/a/YHo300/z9/908272.jpg',
      ),
      CategoryItemModel(
        id: 2,
        name: 'Sport Dress',
        discount: 15,
        rating: 4.2,
        store: 'Sitlly',
        numberOfRatings: 7,
        price: 22,
        imageUrl:
            'https://st2.depositphotos.com/3647147/11215/i/950/depositphotos_112159300-stock-photo-young-beautiful-female-model-in.jpg',
      ),
      CategoryItemModel(
        id: 3,
        name: 'Evening Dress',
        discount: 20,
        rating: 4.7,
        store: 'Dorothy Perkins',
        numberOfRatings: 10,
        price: 15.0,
        imageUrl: 'https://c.stocksy.com/a/YHo300/z9/908272.jpg',
      ),
    ],
  );

  final _secondCategory = CategoryModel(
    id: 1,
    name: 'New',
    description: 'You\'ve never seen it before',
    categoryItems: <CategoryItemModel>[
      CategoryItemModel(
        id: 1,
        name: 'Evening Dress',
        discount: 20,
        rating: 4.7,
        store: 'Dorothy Perkins',
        numberOfRatings: 10,
        price: 15.0,
        imageUrl: 'https://c.stocksy.com/a/YHo300/z9/908272.jpg',
      ),
      CategoryItemModel(
        id: 2,
        name: 'Sport Dress',
        discount: 15,
        rating: 4.2,
        store: 'Sitlly',
        numberOfRatings: 7,
        price: 22,
        imageUrl:
            'https://st2.depositphotos.com/3647147/11215/i/950/depositphotos_112159300-stock-photo-young-beautiful-female-model-in.jpg',
      ),
      CategoryItemModel(
        id: 3,
        name: 'Evening Dress',
        discount: 20,
        rating: 4.7,
        store: 'Dorothy Perkins',
        numberOfRatings: 10,
        price: 15.0,
        imageUrl: 'https://c.stocksy.com/a/YHo300/z9/908272.jpg',
      ),
    ],
  );

  CategoryModel get firstCategory => _firstCategory;
  CategoryModel get secondCategory => _secondCategory;

  void logout() {
    final authController = Get.find<AuthController>();
    authController.logout();
  }
}
