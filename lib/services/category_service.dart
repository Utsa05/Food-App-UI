import 'package:foddies/models/category_model.dart';

class CategoryService {
  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(image: 'assets/burger.png', id: 1, title: 'Burger'),
      CategoryModel(image: 'assets/fold_burger.png', id: 2, title: 'Fold'),
      CategoryModel(image: 'assets/role.png', id: 3, title: 'Role'),
      CategoryModel(image: 'assets/coffe.png', id: 4, title: 'Coffe'),
      CategoryModel(image: 'assets/burger.png', id: 5, title: 'Burger'),
      CategoryModel(image: 'assets/cold_drink.png', id: 6, title: 'Cold Drink'),
      CategoryModel(
          image: 'assets/chiken_vagetable.png', id: 7, title: 'Chicken'),
      CategoryModel(image: 'assets/pizza.png', id: 8, title: 'Pizza'),
    ];
  }
}
