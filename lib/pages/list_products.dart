import 'package:app_flutter_firebase/provider/list_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/product_item.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  Future<void> getProducts() async {
    try{
      await Provider.of<ProductList>(context, listen: false).getProducts();
    } catch (exception) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    }
  }

  ProductList products = ProductList();

  @override
  Widget build(BuildContext context) {

    final productList = Provider.of<ProductList>(context);

    return Scaffold(
      appBar: AppBar(),
      body: 
      // RefreshIndicator(
      //   onRefresh: () async {
      //     getProducts();
      //   },

        // child: products.products.isEmpty
        // ? const Center(
        //   child: Text("Nenhum produto registrado"),
        // )
        // : 
        ListView.builder(
          itemCount: productList.products.length,
          itemBuilder: (context, index) => ProductItem(
              product: productList.products[index],
              )
        // ),
      ),
    );
  }
}