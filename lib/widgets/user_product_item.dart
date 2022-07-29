import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/edit_product_screen.dart';

class UserProductItem extends StatelessWidget {
  // const UserProductItem({ Key? key }) : super(key: key);

  final String id;
  final String title;
  final String ImageUrl;

  UserProductItem(
    this.id,
    this.title,
    this.ImageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(ImageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/edit-product', arguments: id);
                },
                icon: Icon(Icons.edit),
                color: Theme.of(context).primaryColor),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Theme.of(context).errorColor),
          ],
        ),
      ),
    );
  }
}
