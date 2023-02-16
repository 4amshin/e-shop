import 'package:equatable/equatable.dart';

class NewBanner extends Equatable {
  final String? name;
  final String? imgAsset;

  const NewBanner({
    required this.name,
    required this.imgAsset,
  });

  @override
  List<Object?> get props => [name, imgAsset];

  static List<NewBanner> newBanners = const [
    NewBanner(
      name: 'Shirt',
      imgAsset: 'shirt.jpg',
    ),
    NewBanner(
      name: 'Ginger Powder',
      imgAsset: 'ginger-powder.jpg',
    ),
    NewBanner(
      name: 'Ginger Drink',
      imgAsset: 'ginger-drink.jpg',
    ),
    NewBanner(
      name: 'Neon Box',
      imgAsset: 'neon-box.jpg',
    ),
    NewBanner(
      name: 'Sago',
      imgAsset: 'sago.jpg',
    ),
  ];
}
