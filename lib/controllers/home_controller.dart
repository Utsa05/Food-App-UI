// ignore_for_file: depend_on_referenced_packages

import 'package:foddies/models/banner_model.dart';
import 'package:foddies/models/category_model.dart';
import 'package:foddies/models/product_model.dart';
import 'package:foddies/services/banner_service.dart';
import 'package:foddies/services/category_service.dart';
import 'package:foddies/services/product_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var seletedLanguage = "Select Language".obs;

  //banner
  final image = [].obs;
  final promtionimage = [].obs;
  final _currentPage = 0.obs;
  final _currentProductPage = 0.obs;
  getCurrentPage() => _currentPage;
  getPromtionCurrentPage() => _currentPage;

  //category
  var categories = <CategoryModel>[].obs;

  //product
  var products = <ProductModel>[].obs;
  @override
  void onInit() {
    setImage();
    setCategories();
    setProdcut();
    super.onInit();
  }

//banner
  setImage() {
    image.value = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl3DBvqXsV7fczeOyNCDroq5prdyCAHlafQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLD1Frl_tAnRSl5fJASjUlEJIF2vuiwnyqwg&usqp=CAU",
      "https://t3.ftcdn.net/jpg/02/11/10/52/360_F_211105222_dDOZMEhXVUblRNfUkKiAUE3OFaDcz9lT.jpg",
    ];
    promtionimage.value = image;
  }

  void setCurrenPage(pageNo) {
    _currentPage.value = pageNo;
  }

  void setProductCurrenPage(pageNo) {
    _currentProductPage.value = pageNo;
  }

  //categories
  setCategories() {
    categories.value = CategoryService.getCategories();
  }

  //setProduct
  setProdcut() {
    products.value = ProductService.getProducts();
  }
}
