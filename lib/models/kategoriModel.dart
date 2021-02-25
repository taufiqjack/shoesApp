class KategoriModel {
  String images;
  String title;

  KategoriModel({this.images, this.title});
}

List<KategoriModel> kategoriModel = [
  KategoriModel(images: "assets/icons/shoes.svg", title: "Sneakers"),
  KategoriModel(images: "assets/icons/watch.svg", title: "Watch"),
  KategoriModel(images: "assets/icons/backpack.svg", title: "Backpack"),
];
