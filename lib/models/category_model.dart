class CategoryModel {
  final int? id;
  final String? iconPath;
  final String? nameCategory;

  CategoryModel({this.id, this.iconPath, this.nameCategory});
}

List<CategoryModel> listCategory = [
  CategoryModel(
      id: 1, iconPath: 'assets/ic_oldest.png', nameCategory: 'Tua Renta'),
  CategoryModel(
      id: 2, iconPath: 'assets/ic_nutritions.png', nameCategory: 'Nutrisi'),
  CategoryModel(id: 3, iconPath: 'assets/ic_heart.png', nameCategory: 'Hati'),
  CategoryModel(
      id: 4, iconPath: 'assets/ic_first_medical.png', nameCategory: 'Medicine'),
  CategoryModel(id: 5, iconPath: 'assets/ic_mata.png', nameCategory: 'Mata'),
  CategoryModel(
      id: 6, iconPath: 'assets/ic_berat.png', nameCategory: 'Body Fat'),
];
