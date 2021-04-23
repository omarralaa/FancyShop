import 'package:get/get.dart';
import 'package:shop/src/data/models/gender_enum.dart';

class ShopController extends GetxController {
// final MyRepository repository;
// ShopController({@required this.repository}) : assert(repository != null);

//   final _obj = ''.obs;
//   set obj(value) => this._obj.value = value;
//   get obj => this._obj.value;
//
//
//
  Gender _selectedGender;
  Gender get selectedGender => _selectedGender;

  Map<String, String> _announcementBox = {
    'title': 'Summer Sales',
    'description': 'Up to 50% off'
  };

  get announcementBox => _announcementBox;

  announcemntBoxClicked() {}

  void tabSelected(int index) {
    switch (index) {
      case 0:
        _selectedGender = Gender.Female;
        break;
      case 1:
        _selectedGender = Gender.Male;
        break;
      case 2:
        _selectedGender = Gender.Unisex;
        break;
    }
    update();
  }
}
