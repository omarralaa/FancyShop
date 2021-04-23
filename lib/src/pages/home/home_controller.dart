import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
import 'package:shop/src/controllers/category_controller.dart';
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

  // CategoryController _categoryController;

  // var _categories = <CategoryModel>[].obs;
  // get promoCategories => _categories;

  // HomeController() {
  //   _categoryController = Get.find<CategoryController>();
  //   setListsData();
  // }

  // void setListsData() {
  //   _categories.value = _categoryController.homeListsCategories;
  // }

  void logout() {
    final authController = Get.find<AuthController>();
    authController.logout();
  }
}
