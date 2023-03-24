import 'dart:convert';

import 'package:app_flutter_firebase/models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductList extends ChangeNotifier {

  final String _baseUrl = "https://projeto-produtos-1e3f3-default-rtdb.firebaseio.com";

  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> getProducts() async {
    try{
      final request = await http.get(
        Uri.parse("$_baseUrl/products.json")
      );
      final response = jsonDecode(request.body);

      List<Product> newProduct =[];

      if(response != null){
        for(final key in response.keys){
          newProduct.add(Product.fromJson(response[key], key));
        }
      }

    _products = newProduct;
    notifyListeners();
    } catch (_){
      throw Exception("erro ao realizar operação");
    }
  }
}