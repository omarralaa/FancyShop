import 'package:get/get.dart';
import 'package:shop/src/data/models/category.dart';
import 'package:shop/src/data/models/gender_enum.dart';
import 'package:shop/src/data/repositories/category/category_repository.dart';
import 'package:shop/src/data/repositories/category/category_repository_interface.dart';

class CategoryController extends GetxController {
  ICategoryRepository _categoryRepository;

  var _categories = [].obs;
  get categories => _categories;

  var _homeListsCategories = [].obs;
  get homeListsCategories => _homeListsCategories;

  CategoryController() {
    _categoryRepository = Get.put<CategoryRepository>(CategoryRepository());
  }

  @override
  void onInit() {
    getCategoriesData();
    super.onInit();
  }

  Future<void> getCategoriesData() async {
    await getAllCategories();
    await getPromoCategories();
  }

  Future<void> getAllCategories() async {
    try {
      _categories.value = await _categoryRepository.getAllCategories();
    } catch (err) {}
  }

  Future<void> getPromoCategories() async {
    try {
      _homeListsCategories.value =
          await _categoryRepository.getPromoCategories();
    } catch (err) {}
  }

  List<CategoryModel> getCategoriesByGender(Gender gender) {
    return _categories.where((cat) => cat.gender == gender).toList();
  }

  // Future<List<CategoryItemModel>> getCategoryItems() async {
  //   await _categoryRepository.
  // }
}
