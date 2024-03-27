import 'package:kassa/features/main/data/models/product_model.dart';

class MainData{


  static List<ProductModel> products = const [
    ProductModel(id: 1, title: 'Пицца Маргарита'),
    ProductModel(id: 2, title: 'Пицца Пепперони', price: 2990),
    ProductModel(id: 3, title: 'Пицца Гавайская', price: 950),
    ProductModel(id: 4, title: 'Пицца Капричоза', price: 3490),
    ProductModel(id: 5, title: 'Пицца Фунги', price: 1140),
    ProductModel(id: 6, title: 'Пицца Маринара', price: 790)
  ];
}