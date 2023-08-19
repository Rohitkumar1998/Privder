import 'package:app/provider/favourite_provider.dart';
import 'package:app/view/faverouti/my_fav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    // final favProvider = Provider.of<FavoriteProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('favorite'),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyFavouriteScreen()));
              },
              child: Icon(Icons.favorite)),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<FavoriteProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItem.contains(index)) {
                        value.remvoeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    title: Text('Item ' + index.toString()),
                    trailing: Icon(value.selectedItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border_outlined),
                  );
                });
              }),
        )
      ]),
    );
  }
}
