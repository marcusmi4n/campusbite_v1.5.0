import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'Marcus\'s Rolex',
      weight: '800 gm',
      cover: 'https://i.imgur.com/6unJlSL.png',
      images: ['https://i.imgur.com/6unJlSL.png'],
      price: 1000,
      mainPrice: 3000,
    ),
    ProductModel(
      name: 'Sausage and Black Tea',
      weight: '500 gm',
      cover: 'https://i.imgur.com/oaCY49b.png',
      images: ['https://i.imgur.com/oaCY49b.png'],
      price: 500,
      mainPrice: 2000,
    ),
    ProductModel(
      name: 'Matoooke and Rice with Meat',
      weight: '500g',
      cover: 'https://i.imgur.com/5wghZji.png',
      images: ['https://i.imgur.com/5wghZji.png'],
      price: 2000,
      mainPrice: 4500,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'Pancakes',
      cover: 'https://i.imgur.com/Y0IFT2g.png',
      itemNames: ['Cassava, Oil, Sugar'],
      price: 100,
      mainPrice: 500,
    ),
    BundleModel(
      name: 'Nsenene',
      cover: 'https://i.postimg.cc/qtM4zj1K/packs-2.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 7000,
      mainPrice: 10000,
    ),
    BundleModel(
      name: 'Rice & Beans',
      cover: 'https://i.postimg.cc/MnwW8WRd/pack-1.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 1500,
      mainPrice: 3000,
    ),
    BundleModel(
      name: 'Pizza',
      cover: 'https://i.postimg.cc/k2y7Jkv9/pack-4.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 20000,
      mainPrice: 30000,
    ),
  ];
}
