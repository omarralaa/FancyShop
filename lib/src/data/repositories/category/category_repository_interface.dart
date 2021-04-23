import 'package:shop/src/data/models/category.dart';
import 'package:shop/src/data/models/promo_category.dart';

abstract class ICategoryRepository {
  Future<List<CategoryModel>> getHomeTilesCategories();
  Future<List<PromoCategoryModel>> getPromoCategories();
  Future<List<CategoryModel>> getAllCategories();
}
