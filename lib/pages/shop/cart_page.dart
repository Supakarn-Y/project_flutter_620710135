import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/item.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class cartPage extends StatefulWidget {
  static const routeName = '/cart';
  static List<Item> cart = [];
  const cartPage({Key? key}) : super(key: key);

  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  var priceAll = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for(var item in cartPage.cart)
              priceAll += item.price;

          setState(() {
            _showMaterialDialog('Are you sure to buy this item?','The total price of all products is ${priceAll}\npress OK to confirm');
          });
        },
        child: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.black,
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
          itemCount: cartPage.cart.length,
          itemBuilder: (BuildContext context, int index) {
            var item = cartPage.cart[index];
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset(
                          'assets/images/${item.type}/${item.image}',
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox.shrink(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                              '${item.price} BAHT',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ]),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      cartPage.cart.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.clear)),
                            ],
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
                setState(() {
                  cartPage.cart.clear();
                });
                Navigator.of(context).pop();
                _DialogConfirm("SUCCESS", "PURCHASE SUCCESSFUL");
              },
            ),
            TextButton(
              child: const Text('CANCLE'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void _DialogConfirm(String title, String msg) {
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

                Navigator.of(context).pop();
              },
            ),

          ],
        );
      },
    );
  }
}
