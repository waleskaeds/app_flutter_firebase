import 'package:app_flutter_firebase/app/app_routes.dart';
import 'package:app_flutter_firebase/pages/list_products.dart';
import 'package:app_flutter_firebase/provider/list_products.dart';
import 'package:app_flutter_firebase/pages/home.dart';
import 'package:app_flutter_firebase/pages/register_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create: (context) => ProductList(),
       child: MaterialApp(
          routes: {
            AppRoutes.home : (context) => const Home(),
            AppRoutes.register : (context) => const RegisterProduct(),
            AppRoutes.list : (context) => const AllProducts()
          },
         ),
     );
  }
}