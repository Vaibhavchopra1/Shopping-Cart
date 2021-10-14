import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const PRICE = "price";
  static const DESCRIPTION = "description";
  static const CATEGORY = "category";
  String _id;
  String _name;
  String _category;
  String _image;
  String _description;
  int _price;

  String get id => _id;
  String get name => _name;
  String get category => _category;
  String get description => _description;
  String get image => _image;
  int get price => _price;

  // public variable
  bool liked = false;

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data[ID];
    _image = snapshot.data[IMAGE];
    _description = snapshot.data[DESCRIPTION];
    _id = snapshot.data[ID];
    _price = snapshot.data[PRICE].floor();
    _category = snapshot.data[CATEGORY];
    _name = snapshot.data[NAME];
  }
}
