import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel{
  static const ID = "id";
  static const DESCRIPTION = "description";
  static const CART = "cart";
  static const USER_ID = "userId";
  static const TOTAL = "total";

  String _id;
  String _description;
  String _userId;
  int _total;

//  getters
  String get id => _id;
  String get description => _description;
  String get userId => _userId;
  int get total => _total;
  // public variable
  List cart;


  OrderModel.fromSnapshot(DocumentSnapshot snapshot){
    _id = snapshot.data[ID];
    _description = snapshot.data[DESCRIPTION];
    _total = snapshot.data[TOTAL];
    _userId = snapshot.data[USER_ID];
    cart = snapshot.data[CART];
  }









}