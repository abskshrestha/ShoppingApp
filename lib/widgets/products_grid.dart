import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

Provider.of(context).
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl,
          ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
