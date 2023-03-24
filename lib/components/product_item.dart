import 'package:app_flutter_firebase/models/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    ),
                  Text(product.description),
                  Text(product.price.toString()),
                ],
              ),
            ),
          ),

          Container(
            // padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(Icons.edit),
              iconSize: 30,
              onPressed: (){}, 
            ),
          ),
        ],
      ),
    );
  }
}