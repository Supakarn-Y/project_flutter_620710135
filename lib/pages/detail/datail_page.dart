import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/favorite/favorite_page.dart';
import 'package:project_flutter_620710135/pages/shop/cart_page.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail';
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var items = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail',
          style: GoogleFonts.roboto(),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      Center(
                        child: Image.asset(
                            'assets/images/${items.type}/${items.image}',
                            fit: BoxFit.fill),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      Card(
                        elevation: 5.0,
                        shadowColor: Colors.black.withOpacity(0.2),
                        color: Colors.white.withOpacity(0.7),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('LOGITECT ${items.title}',
                                  style: GoogleFonts.kanit(fontSize: 20.0)),
                              Text('price : ${items.price} Baht',
                                  style: GoogleFonts.kanit(fontSize: 20.0)),
                              Text(items.detail,
                                  style: GoogleFonts.kanit(fontSize: 20.0)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ADD THIS ITEM TO CART',
                        style: GoogleFonts.prompt(
                            fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                      ),
                      onPressed: () {
                        setState(() {
                          cartPage.cart.add(items);
                        });
                         _showMaterialDialog("ADD SUCCESS ✔",
                            "LOGITECT ${items.title} ADD IN CART");
                      },
                      child: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ADD THIS ITEM TO FAVORITE ',
                        style: GoogleFonts.prompt(
                            fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                      ),
                      onPressed: () {
                        items.like ? null : FavoritePage.favorite.add(items);
                        items.like
                            ? _showMaterialDialog("INVALID ✖",
                                " LOGITECT ${items.title} IS ALREADY ADDED")
                            : _showMaterialDialog("ADD SUCCESS ✔",
                                "LOGITECT ${items.title} ADD IN FAVORITE MENU");
                        items.like = true;
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg, style: TextStyle()),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
