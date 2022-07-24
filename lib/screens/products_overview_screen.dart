import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/cart.dart';
import 'package:flutter_complete_guide/widgets/badge.dart';
import 'package:provider/provider.dart';
import '../widgets/products_grid.dart';

enum FilteredOptions { Favorites, ShowAll }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilteredOptions SelectedValue) {
              setState(() {
                if (SelectedValue == FilteredOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                  child: Text('Only Favorites'),
                  value: FilteredOptions.Favorites),
              PopupMenuItem(
                  child: Text('Show All'), value: FilteredOptions.ShowAll),
            ],
          ),
          Consumer<Cart>(builder: (_, cartData, ch) => Badge(
            child: ch,
          value: cart.itemCount.toString(),
          ),
                      child: IconButton(icon: Icon(Icons.shopping_cart)),

          ),
          ),
          ); 
  }
}
