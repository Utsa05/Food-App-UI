import 'package:foddies/models/banner_model.dart';

class BannerService {
  static List<BannerModel> getProducts() {
    return [
      BannerModel(image: 'assets/burger.png', id: 1,),
      BannerModel(image: 'assets/flod_burger.png', id: 2),
      BannerModel(image: 'assets/role.png', id: 3),
      BannerModel(image: 'assets/coffe.png', id: 4),
      BannerModel(image: 'assets/burger.png', id: 5),
      BannerModel(image: 'assets/cold_drink.png', id: 6),
      BannerModel(image: 'assets/chicken_vagetable.png', id: 7),
      BannerModel(image: 'assets/pizza.png', id: 8),
    ];
  }
}
