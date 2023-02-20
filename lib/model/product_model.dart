// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? name;
  final String? category;
  final String? imgUrl;
  final double? price;
  final bool? isRecommended;
  final bool? isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imgUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imgUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = const [
    Product(
      name: 'Speaker',
      category: 'Electronic',
      imgUrl: 'default.jpg',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Mouse',
      category: 'Tools',
      imgUrl: 'default.jpg',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Keyboard',
      category: 'Tools',
      imgUrl: 'default.jpg',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Mac Pro',
      category: 'Gadget',
      imgUrl: 'default.jpg',
      price: 6.99,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Ipad Pro X',
      category: 'Gadget',
      imgUrl: 'default.jpg',
      price: 6.99,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Iphone 13',
      category: 'Gadget',
      imgUrl: 'default.jpg',
      price: 6.99,
      isRecommended: false,
      isPopular: true,
    ),
  ];
}
