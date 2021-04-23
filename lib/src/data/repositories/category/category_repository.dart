import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop/src/data/models/category.dart';
import 'package:shop/src/data/models/category_item.dart';
import 'package:shop/src/data/models/gender_enum.dart';
import 'package:shop/src/data/models/promo_category.dart';
import 'package:shop/src/data/provider/shop_api.dart';
import 'package:shop/src/data/repositories/category/category_repository_interface.dart';

class CategoryRepository extends ICategoryRepository {
  Dio _httpService;

  CategoryRepository() {
    ShopApiClient apiClient = Get.put(ShopApiClient());
    apiClient.init();
    _httpService = apiClient.httpClient;
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    return _categories;
  }

  @override
  Future<List<PromoCategoryModel>> getPromoCategories() async {
    return _promoCategories;
  }

  @override
  Future<List<CategoryModel>> getHomeTilesCategories() async {
    // TODO: implement getHomeTilesCategories
    throw UnimplementedError();
  }

  //  categoryItems: <CategoryItemModel>[
  //       CategoryItemModel(
  //         id: 1,
  //         name: 'Evening Dress',
  //         discount: 20,
  //         rating: 4.7,
  //         store: 'Dorothy Perkins',
  //         numberOfRatings: 10,
  //         price: 15.0,
  //         imageUrl: 'https://c.stocksy.com/a/YHo300/z9/908272.jpg',
  //       ),
  //       CategoryItemModel(
  //         id: 2,
  //         name: 'Sport Dress',
  //         discount: 15,
  //         rating: 4.2,
  //         store: 'Sitlly',
  //         numberOfRatings: 7,
  //         price: 22,
  //         imageUrl:
  //             'https://st2.depositphotos.com/3647147/11215/i/950/depositphotos_112159300-stock-photo-young-beautiful-female-model-in.jpg',
  //       ),
  //     ],

  List<CategoryModel> _categories = [
    CategoryModel(
      id: 1,
      name: 'Shoes',
      description: 'See our recent collections of fabolous shoes',
      gender: Gender.Unisex,
      imageUrl:
          'https://ae01.alicdn.com/kf/HTB14lAriyCYBuNkSnaVq6AMsVXaD/Lzzf-Women-Shoes-Designer-PU-Leather-Spring-Casual-Shoes-Outdoor-Walking-Sneakers-Shoes-Woman-Flats-Lace.jpg',
    ),
    CategoryModel(
      id: 2,
      name: 'Accessories',
      description: 'See our recent collections of fabolous shoes',
      gender: Gender.Female,
      imageUrl:
          'https://pyxis.nymag.com/v1/imgs/bb0/6c3/03df5277549ea55f8f2ab24a30af0979c1-vrai-solitaire-necklace-.2x.w600.jpg',
    ),
    CategoryModel(
      id: 3,
      name: 'Blouses',
      description: 'See our recent collections of fabolous shoes',
      gender: Gender.Female,
      imageUrl:
          'https://cdn.laredoute.com/products/641by641/5/8/7/58731332475a824e6941cec8f1b01c7a.jpg',
    ),
    CategoryModel(
      id: 4,
      name: 'Hats',
      description: 'See our recent collections of fabolous shoes',
      gender: Gender.Male,
      imageUrl:
          'https://www.dapperconfidential.com/wp-content/uploads/2020/03/photo-of-man-wearing-sun-hat-3017918-e1585440427599.jpg',
    ),
  ];

  // STATIC DATA TO BE REMOVED
  List<PromoCategoryModel> _promoCategories = [
    PromoCategoryModel(
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
    ),
    PromoCategoryModel(
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
    ),
  ];
}
