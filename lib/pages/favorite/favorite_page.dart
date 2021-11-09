

import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/item.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class FavoritePage extends StatefulWidget {
  static const routeName = '/favorite';
  static List<Item> favorite = [];
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            FavoritePage.favorite.clear();
            for(var item in ItemDB.keyborad){
              item.like = false ;
            }
            for(var item in ItemDB.mouse){
              item.like = false ;
            }
            for(var item in ItemDB.headset){
              item.like = false ;
            }
            for(var item in ItemDB.mousepad){
              item.like = false ;
            }
            for(var item in ItemDB.controller){
              item.like = false ;
            }
          });

        },
        child: const Icon(Icons.clear),
        backgroundColor: Colors.red,
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: FavoritePage.favorite.length,
          itemBuilder: (BuildContext context, int index) {
            var item = FavoritePage.favorite[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 5.0,
              shadowColor: Colors.black.withOpacity(0.2),
              child: InkWell(
                onTap: () {
                  print(item);
                  Navigator.pushNamed(
                    context,
                    DetailPage.routeName,
                    arguments: item,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/${item.type}/${item.image}',
                        width: 60.0,
                        height: 60.0,
                      ),
                      //Icon(Icons.person),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${item.title}',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '${item.price} บาท',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
